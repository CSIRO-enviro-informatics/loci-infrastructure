import setuptools


with open("../README.md") as fp:
    long_description = fp.read()


setuptools.setup(
    name="time_api_infrastructure",
    version="0.0.1",

    description="Deployment of time demo infrastructure for CSIRO LOCI project.",
    long_description=long_description,
    long_description_content_type="text/markdown",

    author="author",

    package_dir={"": "time_api_infrastructure"},
    packages=setuptools.find_packages(where="time_api_infrastructure"),

    install_requires=[
        "aws-cdk.core==1.109.0",
        "aws-cdk.aws-ec2",
        "aws-cdk.aws-route53",
        "aws-cdk.aws-s3",
        "aws-cdk.aws-secretsmanager"
    ],

    python_requires=">=3.6",

    classifiers=[
        "Development Status :: 4 - Beta",
        "Intended Audience :: Developers",
        "Programming Language :: Python :: 3.8",
        "Topic :: Software Development :: Code Generators",
        "Topic :: Utilities",
        "Typing :: Typed",
    ],
)
