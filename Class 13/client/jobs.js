const newJobForm = document.getElementById('new-job-form');
const jobsTableBody = document.querySelector('#jobs-table tbody');

fetch('http://localhost:3000/jobs')
  .then((response) => response.json())
  .then((jobs) => {
    jobs.forEach((job) => {
      jobsTableBody.innerHTML += `
        <tr id="job-${job.id}">
          <td>${job.job_type}</td>
          <td>${job.description}</td>
          <td>${job.qualifications}</td>
          <td>${job.company}</td>
          <td>
            <button class="edit-job-button" data-job-id="${job.id}">Edit</button>
            <button class="delete-job-button" data-job-id="${job.id}">Delete</button>
          </td>
        </tr>
      `;
    });
  })
  .catch((error) => console.error(error));

newJobForm.addEventListener('submit', (event) => {
  event.preventDefault();

  const jobType = document.getElementById('job-type').value;
  const description = document.getElementById('description').value;
  const qualifications = document.getElementById('qualifications').value;
  const company = document.getElementById('company').value;

  fetch('http://localhost:3000/jobs', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      job_type: jobType,
      description: description,
      qualifications: qualifications,
      company: company,
    }),
  })
    .then((response) => response.json())
    .then((job) => {
      jobsTableBody.innerHTML += `
        <tr id="job-${job.id}">
          <td>${job.job_type}</td>
          <td>${job.description}</td>
          <td>${job.qualifications}</td>
          <td>${job.company}</td>
          <td>
            <button class="edit-job-button" data-job-id="${job.id}">Edit</button>
            <button class="delete-job-button" data-job-id="${job.id}">Delete</button>
          </td>
        </tr>
      `;
    })
    .catch((error) => console.error(error));

  newJobForm.reset();
});

jobsTableBody.addEventListener('click', (event) => {
  const jobId = event.target.dataset.jobId;
  const jobRow = document.getElementById(`job-${jobId}`);
  if (
    event.target.classList.contains('edit-job-button') &&
    !event.target.classList.contains('save-job-button')
  ) {
    const jobTypeCell = jobRow.querySelector('td:first-child');
    const descriptionCell = jobTypeCell.nextElementSibling;
    const qualificationsCell = descriptionCell.nextElementSibling;
    const companyCell = qualificationsCell.nextElementSibling;

    jobTypeCell.innerHTML = `<input type="text" value="${jobTypeCell.innerText}">`;
    descriptionCell.innerHTML = `<textarea>${descriptionCell.innerText}</textarea>`;
    qualificationsCell.innerHTML = `<textarea>${qualificationsCell.innerText}</textarea>`;
    companyCell.innerHTML = `<input type="text" value="${companyCell.innerText}">`;

    event.target.classList.add('save-job-button');
    event.target.innerText = 'Save';
  } else if (event.target.classList.contains('save-job-button')) {
    const jobTypeInput = jobRow.querySelector("input[type='text']");
    const descriptionTextarea = jobRow.querySelector('textarea:nth-of-type(1)');
    const qualificationsTextarea = jobRow.querySelector(
      'textarea:last-of-type'
    );
    const companyInput = jobRow.querySelector(
      "input[type='text']:last-of-type"
    );
    console.log(descriptionTextarea);
    console.log(qualificationsTextarea);
    const jobType = jobTypeInput.value;
    const description = descriptionTextarea.value;
    const qualifications = qualificationsTextarea.value;
    const company = companyInput.value;

    fetch(`http://localhost:3000/jobs/${jobId}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        job_type: jobType,
        description: description,
        qualifications: qualifications,
        company: company,
      }),
    })
      .then((response) => response.json())
      .then((job) => {
        jobRow.innerHTML = `
      <td>${job.job_type}</td>
      <td>${job.description}</td>
      <td>${job.qualifications}</td>
      <td>${job.company}</td>
      <td>
        <button class="edit-job-button" data-job-id="${job.id}">Edit</button>
        <button class="delete-job-button" data-job-id="${job.id}">Delete</button>
      </td>
    `;
      })
      .catch((error) => console.error(error));

    event.target.classList.remove('save-job-button');
    event.target.innerText = 'Edit';
  } else if (event.target.classList.contains('delete-job-button')) {
    fetch(`http://localhost:3000/jobs/${jobId}`, {
      method: 'DELETE',
    })
      .then((response) => {
        if (response.ok) {
          jobRow.remove();
        } else {
          throw new Error(`Unable to delete job with ID ${jobId}`);
        }
      })
      .catch((error) => console.error(error));
  }
});
