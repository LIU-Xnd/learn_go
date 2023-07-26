In my understanding:

If one builds a project locally, and one puts **all sub-modules** (e.g. `MainModule/subModule/`) **in the main-folder** `MainModule/`, one should follow the rule that:

- The name of a sub-module folder (`MainModule/subModule/`) be the same as the package name therein (`package subModule`);

- The name of imported modules in the main code file (`MainModule/main.go`) be `import "MainModule/subModule"`;

- The called function in sub-modules (`SubFunction()`) be called using `subModule.SubFunction()`.
