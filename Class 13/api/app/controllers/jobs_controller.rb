class JobsController < ApplicationController
  def index
    jobs = Job.all
    render json: jobs
  end

  def show
    job = Job.find(params[:id])
    render json: job
  end

  def create
    job = Job.new(job_type: params[:job_type], description: params[:description], qualifications: params[:qualifications], company: params[:company])

    if job.save
      render json: job, status: :created
    else
      render json: {errors: job.errors}, status: :unprocessable_entity
    end
  end

  def update
    job = Job.find(params[:id])

    if job.update(job_type: params[:job_type], description: params[:description], qualifications: params[:qualifications], company: params[:company])
      render json: job, status: :ok
    else
      render json: {errors: job.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy
    render json: {message: "job deleted"}, status: :ok
  end
  
end
