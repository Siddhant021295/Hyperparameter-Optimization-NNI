from nni.experiment import Experiment

search_space = {
    'features1': {'_type': 'choice', '_value': [300, 400, 500, 600]},
    'features2': {'_type': 'choice', '_value': [10, 20, 30, 40]},
    'lr': {'_type': 'loguniform', '_value': [0.0001, 0.1]},
    'epsilon': {'_type': 'uniform', '_value': [1e-06, 1e-07]},
}
experiment = Experiment('local')

experiment.config.trial_command = 'python3 model_vae.py'
experiment.config.trial_code_directory = '.'

experiment.config.search_space = search_space


experiment.config.tuner.name = 'Random'
experiment.config.tuner.class_args['optimize_mode'] = 'minimum'

experiment.config.max_trial_number = 10
experiment.config.trial_concurrency = 1

experiment.run(8081)

experiment.stop()
