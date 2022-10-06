.PHONY: stripe-webhook help

.DEFAULT_GOAL := help

help: ## show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

main-debug: ## listen to stripe webhook 
	git checkout main
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter build web -t lib/main.widgetbook.dart
	widgetbook_debug \
		--path "./" --api-key "kMfytk1Iwdxi7EtS7d7vLTgiP0sPh7eS" \
		--repository \
		repo-comparison \
		--actor \
		jenshor \
		--git-provider \
		"Local"

feat-debug: ## listen to stripe webhook 
	git checkout feat/feat-2
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter build web -t lib/main.widgetbook.dart
	widgetbook_debug \
		--path "./" --api-key "kMfytk1Iwdxi7EtS7d7vLTgiP0sPh7eS" \
		--repository \
		repo-comparison \
		--actor \
		jenshor \
		--base-branch \
		main \
		--git-provider \
		"Local"

main-staging: ## listen to stripe webhook 
	git checkout main
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter build web -t lib/main.widgetbook.dart
		widgetbook-cli-staging \
		--path "./" --api-key "Wisf3VPXGLAz3NaprKTKCkSOz063ChPC" \
		--branch \
		main \
		--repository \
		repo-comparison \
		--commit \
		commit-main \
		--actor \
		EricRootLee \
		--git-provider \
		"GitHub"

feat-staging: ## listen to stripe webhook 
	git checkout feat/feat-2
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter build web -t lib/main.widgetbook.dart
	widgetbook_staging \
		--path "./" --api-key "Wisf3VPXGLAz3NaprKTKCkSOz063ChPC" \
		--branch \
		feat/feat-2 \
		--repository \
		repo-comparison \
		--commit \
		commit1 \
		--actor \
		EricRootLee \
		--base-branch \
		main \
		--base-commit \
		commit-main \
		--git-provider \
		"GitHub"

main-prod: ## listen to stripe webhook 
	git checkout main
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter build web -t lib/main.widgetbook.dart
		widgetbook \
		--path "./" --api-key "kTGUntaw9ms7iqE8iYBJPtQVHbT6W9gq" \
		--branch \
		main \
		--repository \
		repo-comparison \
		--commit \
		commit-main \
		--actor \
		jenshor \
		--git-provider \
		"GitHub"

feat-prod: ## listen to stripe webhook 
	git checkout feat/feat-2
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter build web -t lib/main.widgetbook.dart
	widgetbook \
		--path "./" --api-key "kTGUntaw9ms7iqE8iYBJPtQVHbT6W9gq" \
		--branch \
		feat/feat-2 \
		--repository \
		repo-comparison \
		--commit \
		commit1 \
		--actor \
		jenshor \
		--base-branch \
		main \
		--base-commit \
		commit-main \
		--git-provider \
		"GitHub"