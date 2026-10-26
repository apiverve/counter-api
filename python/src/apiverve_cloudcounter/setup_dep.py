from setuptools import setup, find_packages

setup(
    name='apiverve_cloudcounter',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Cloud Counter stores and updates persistent numeric counters by ID without needing a database. It tracks increments, decrements, and custom values while returning timestamps and number properties like parity and prime status.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/counter?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
