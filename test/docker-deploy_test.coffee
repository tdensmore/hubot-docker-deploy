chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'docker-deploy', ->
  http_status_module = require "../src/docker-deploy"

  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
    @http_status = docker_deploy_module(@robot)

  it 'responds to deploy request', ->
    expect(@robot.respond).to.have.been.calledWith(/deploying (.*)/i)
