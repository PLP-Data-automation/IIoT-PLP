import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setuptools.setup(
    name    = "IIoT-PLP",
    version = "1.0.1",
    author  = "Fuentes Juvera, Luis & Sámano Ortega, Christian",
    author_email    = "luis.fuju@outlook.com",
    description     = "Python modulefor IIoT integration with Power BI",
    long_description= long_description,
    long_description_content_type = "text/markdown",
    url     = "https://github.com/PLP-Data-automation/IIoT-PLP/",
    project_urls={
        "Bug Tracker": "https://github.com/PLP-Data-automation/IIoT-PLP/issues",
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    package_dir     = {"": "src"},
    packages        = setuptools.find_packages(where="src"),
    python_requires = ">=3.8",
    install_requires= [ 
        "requests",
        "pycryptodome",
        "PyQt5",
        "pandas",
        "matplotlib",
        "wheel"
    ],
    package_data={'': ['*.json', '*.png', '*.md' "LICENSE"]},
    include_package_data=True
)