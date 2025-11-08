# Test
# https://opentofu.org/docs/cli/commands/test

# Mock Providers
# https://opentofu.org/docs/cli/commands/test/#the-mock_provider-blocks

run "broken-workspace" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "broken-workspace"
  }

  assert {
    condition     = output.environment == null
    error_message = "Expected null for broken-workspace workspace"
  }

  assert {
    condition     = output.region == null
    error_message = "Expected null for broken-workspace workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for broken-workspace workspace"
  }
}

run "default" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "default"
  }

  assert {
    condition     = output.environment == "mock-environment"
    error_message = "Expected mock-environment for default workspace"
  }

  assert {
    condition     = output.region == "mock-region"
    error_message = "Expected mock-region for default workspace"
  }

  assert {
    condition     = output.zone == "mock-zone"
    error_message = "Expected mock-zone for default workspace"
  }
}

run "europe_west1_a_non_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "europe-west1-a-non-production"
  }

  assert {
    condition     = output.environment == "non-production"
    error_message = "Expected non-production for europe-west1-a-non-production workspace"
  }

  assert {
    condition     = output.region == "europe-west1"
    error_message = "Expected europe-west1 for europe-west1-a-non-production workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for europe-west1-a-non-production workspace"
  }
}

run "europe_west1_a_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "europe-west1-a-production"
  }

  assert {
    condition     = output.environment == "production"
    error_message = "Expected production for europe-west1-a-production workspace"
  }

  assert {
    condition     = output.region == "europe-west1"
    error_message = "Expected europe-west1 for europe-west1-a-production workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for europe-west1-a-production workspace"
  }
}

run "europe_west1_a_sandbox" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "europe-west1-a-sandbox"
  }

  assert {
    condition     = output.environment == "sandbox"
    error_message = "Expected sandbox for europe-west1-a-sandbox workspace"
  }

  assert {
    condition     = output.region == "europe-west1"
    error_message = "Expected europe-west1 for europe-west1-a-sandbox workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for europe-west1-a-sandbox workspace"
  }
}

run "europe_west1_a_test_non_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "europe-west1-a-test-non-production"
  }

  assert {
    condition     = output.environment == "non-production"
    error_message = "Expected non-production for europe-west1-a-test-non-production workspace"
  }

  assert {
    condition     = output.region == "europe-west1"
    error_message = "Expected europe-west1 for europe-west1-a-test-non-production workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for europe-west1-a-test-non-production workspace"
  }
}

run "europe_west1_a_test_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "europe-west1-a-test-production"
  }

  assert {
    condition     = output.environment == "production"
    error_message = "Expected production for europe-west1-a-test-production workspace"
  }

  assert {
    condition     = output.region == "europe-west1"
    error_message = "Expected europe-west1 for europe-west1-a-test-production workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for europe-west1-a-test-production workspace"
  }
}

run "europe_west1_a_test_sandbox" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "europe-west1-a-test-sandbox"
  }

  assert {
    condition     = output.environment == "sandbox"
    error_message = "Expected sandbox for europe-west1-a-test-sandbox workspace"
  }

  assert {
    condition     = output.region == "europe-west1"
    error_message = "Expected europe-west1 for europe-west1-a-test-sandbox workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for europe-west1-a-test-sandbox workspace"
  }
}

run "europe_west1_non_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "europe-west1-non-production"
  }

  assert {
    condition     = output.environment == "non-production"
    error_message = "Expected non-production for europe-west1-non-production workspace"
  }

  assert {
    condition     = output.region == "europe-west1"
    error_message = "Expected europe-west1 for europe-west1-non-production workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for europe-west1-non-production workspace"
  }
}

run "europe_west1_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "europe-west1-production"
  }

  assert {
    condition     = output.environment == "production"
    error_message = "Expected production for europe-west1-production workspace"
  }

  assert {
    condition     = output.region == "europe-west1"
    error_message = "Expected europe-west1 for europe-west1-production workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for europe-west1-production workspace"
  }
}

run "europe_west1_sandbox" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "europe-west1-sandbox"
  }

  assert {
    condition     = output.environment == "sandbox"
    error_message = "Expected sandbox for europe-west1-sandbox workspace"
  }

  assert {
    condition     = output.region == "europe-west1"
    error_message = "Expected europe-west1 for europe-west1-sandbox workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for europe-west1-sandbox workspace"
  }
}

run "main_non_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "main-non-production"
  }

  assert {
    condition     = output.environment == "non-production"
    error_message = "Expected non-production for main-non-production workspace"
  }

  assert {
    condition     = output.env_folder == "Non Production"
    error_message = "Expected Non Production for main-non-production workspace"
  }

  assert {
    condition     = output.region == null
    error_message = "Expected null for main-non-production workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for main-non-production workspace"
  }
}

run "main_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "main-production"
  }

  assert {
    condition     = output.environment == "production"
    error_message = "Expected production for main-production workspace"
  }

  assert {
    condition     = output.env_folder == "Production"
    error_message = "Expected Production for main-production workspace"
  }

  assert {
    condition     = output.region == null
    error_message = "Expected null for main-production workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for main-production workspace"
  }
}

run "main_sandbox" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "main-sandbox"
  }

  assert {
    condition     = output.environment == "sandbox"
    error_message = "Expected sandbox for main-sandbox workspace"
  }

  assert {
    condition     = output.env_folder == "Sandbox"
    error_message = "Expected Sandbox for main-sandbox workspace"
  }

  assert {
    condition     = output.region == null
    error_message = "Expected null for main-sandbox workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for main-sandbox workspace"
  }
}

run "us_east1_a_non_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "us-east1-a-non-production"
  }

  assert {
    condition     = output.environment == "non-production"
    error_message = "Expected non-production for us-east1-a-non-production workspace"
  }

  assert {
    condition     = output.region == "us-east1"
    error_message = "Expected us-east1 for us-east1-a-non-production workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for us-east1-a-non-production workspace"
  }
}

run "us_east1_a_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "us-east1-a-production"
  }

  assert {
    condition     = output.environment == "production"
    error_message = "Expected production for us-east1-a-production workspace"
  }

  assert {
    condition     = output.region == "us-east1"
    error_message = "Expected us-east1 for us-east1-a-production workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for us-east1-a-production workspace"
  }
}

run "us_east1_a_sandbox" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "us-east1-a-sandbox"
  }

  assert {
    condition     = output.environment == "sandbox"
    error_message = "Expected sandbox for us-east1-a-sandbox workspace"
  }

  assert {
    condition     = output.region == "us-east1"
    error_message = "Expected us-east1 for us-east1-a-sandbox workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for us-east1-a-sandbox workspace"
  }
}

run "us_east1_a_test_non_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "us-east1-a-test-non-production"
  }

  assert {
    condition     = output.environment == "non-production"
    error_message = "Expected non-production for us-east1-a-test-non-production workspace"
  }

  assert {
    condition     = output.region == "us-east1"
    error_message = "Expected us-east1 for us-east1-a-test-non-production workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for us-east1-a-test-non-production workspace"
  }
}

run "us_east1_a_test_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "us-east1-a-test-production"
  }

  assert {
    condition     = output.environment == "production"
    error_message = "Expected production for us-east1-a-test-production workspace"
  }

  assert {
    condition     = output.region == "us-east1"
    error_message = "Expected us-east1 for us-east1-a-test-production workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for us-east1-a-test-production workspace"
  }
}

run "us_east1_a_test_sandbox" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "us-east1-a-test-sandbox"
  }

  assert {
    condition     = output.environment == "sandbox"
    error_message = "Expected sandbox for us-east1-a-test-sandbox workspace"
  }

  assert {
    condition     = output.region == "us-east1"
    error_message = "Expected us-east1 for us-east1-a-test-sandbox workspace"
  }

  assert {
    condition     = output.zone == "a"
    error_message = "Expected a for us-east1-a-test-sandbox workspace"
  }
}

run "us_east1_non_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "us-east1-non-production"
  }

  assert {
    condition     = output.environment == "non-production"
    error_message = "Expected non-production for us-east1-non-production workspace"
  }

  assert {
    condition     = output.region == "us-east1"
    error_message = "Expected us-east1 for us-east1-non-production workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for us-east1-non-production workspace"
  }
}

run "us_east1_production" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "us-east1-production"
  }

  assert {
    condition     = output.environment == "production"
    error_message = "Expected production for us-east1-production workspace"
  }

  assert {
    condition     = output.region == "us-east1"
    error_message = "Expected us-east1 for us-east1-production workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for us-east1-production workspace"
  }
}

run "us_east1_sandbox" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }

  variables {
    workspace = "us-east1-sandbox"
  }

  assert {
    condition     = output.environment == "sandbox"
    error_message = "Expected sandbox for us-east1-sandbox workspace"
  }

  assert {
    condition     = output.region == "us-east1"
    error_message = "Expected us-east1 for us-east1-sandbox workspace"
  }

  assert {
    condition     = output.zone == null
    error_message = "Expected null for us-east1-sandbox workspace"
  }
}

variables {
  cost_center         = "mock-cost-center"
  data_classification = "mock-data-classification"
  repository          = "mock-repository"
  team                = "mock-team"
}
