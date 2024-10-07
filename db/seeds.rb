# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
AGE_GROUPS = %w[ pediatrics adult ]
NF_TYPES = [
  { name: "Neurofibromatosis Type-1", abbreviation: "NF1" },
  { name: "Neurofibromatosis Type-2 - Related Schwannomatosis", abbreviation: "NF2-SWN" },
  { name: "Schwannomatosis", abbreviation: "SWN" }
]

DISIPLINES = [
  { name: "Allergy and Immunology", summary: "Focuses on allergies and diseases of the immune system." },
  { name: "Anesthesiology", summary: "Deals with pain relief during and after surgery." },
  { name: "Dermatology", summary: "Concerns the skin, hair, and nails." },
  { name: "Diagnostic Radiology", summary: "Uses imaging to diagnose diseases." },
  { name: "Emergency Medicine", summary: "Provides immediate treatment for acute illnesses and injuries." },
  { name: "Family Medicine", summary: "Offers comprehensive health care for individuals and families." },
  { name: "Internal Medicine", summary: "Focuses on adult diseases and conditions." },
  { name: "Medical Genetics", summary: "Studies genetic disorders and their treatments." },
  { name: "Neurology", summary: "Deals with disorders of the nervous system." },
  { name: "Nuclear Medicine", summary: "Uses radioactive substances for diagnosis and treatment." },
  { name: "Obstetrics and Gynecology", summary: "Focuses on childbirth and female reproductive health." },
  { name: "Ophthalmology", summary: "Concerns eye and vision care." },
  { name: "Pathology", summary: "Studies diseases through examination of tissues, organs, and bodily fluids." },
  { name: "Pediatrics", summary: "Provides medical care for infants, children, and adolescents." },
  { name: "Physical Medicine and Rehabilitation", summary: "Aims to enhance and restore functional ability." },
  { name: "Preventive Medicine", summary: "Focuses on disease prevention and health promotion." },
  { name: "Psychiatry", summary: "Deals with mental health disorders." },
  { name: "Radiation Oncology", summary: "Uses radiation to treat cancer." },
  { name: "Surgery", summary: "Involves operative procedures to treat diseases and injuries." },
  { name: "Urology", summary: "Focuses on the urinary tract and male reproductive organs12." }
]

SUFFIXES = [
  { name: "American Board of Professional Psychology - Clinical Neuropsychology", abbreviation: "ABPP-CN", summary: "Certification for psychologists specializing in the assessment and treatment of brain-behavior relationships." },
  { name: "Advanced Registered Nurse Practitioner", abbreviation: "ARNP", summary: "A registered nurse with advanced training in diagnosing and treating illnesses, prescribing medications, and performing physical exams." },
  { name: "Bachelor of Science in Nursing", abbreviation: "BSN", summary: "An undergraduate degree in nursing that prepares individuals to become registered nurses (RNs) with a focus on patient care, research, and health promotion." },
  { name: "Certified Genetic Counselor", abbreviation: "CGC", summary: "A certification for genetic counselors who provide information and support to individuals or families with genetic disorders, granted by the American Board of Genetic Counseling." },
  { name: "Certified Pediatric Emergency Nurse", abbreviation: "CPEN", summary: "A certification for nurses specializing in emergency care for pediatric patients, demonstrating expertise in pediatric emergency nursing." },
  { name: "Certified Registered Nurse Practitioner", abbreviation: "CRNP", summary: "Similar to ARNP, this certification indicates advanced practice nurses who can diagnose and treat medical conditions, prescribe medications, and provide comprehensive care." },
  { name: "Fellow of the American Academy of Nursing", abbreviation: "FAAN", summary: "An honorary designation for nurses who have made significant contributions to the nursing profession and healthcare." },
  { name: "Fellow of the American Neurological Association", abbreviation: "FANA", summary: "An honorary title awarded to neurologists who have made substantial contributions to the field of neurology." },
  { name: "Licensed Certified Genetic Counselor", abbreviation: "LCGC", summary: "A professional designation for genetic counselors who are licensed and certified to provide genetic counseling services." },
  { name: "Licensed Genetic Counselor", abbreviation: "LGC", summary: "Similar to LCGC, this designation indicates a genetic counselor who is licensed to practice." },
  { name: "Doctor of Medicine", abbreviation: "MD", summary: "A professional doctoral degree for physicians and surgeons, focusing on diagnosing and treating medical conditions." },
  { name: "Master of Public Health", abbreviation: "MPH", summary: "A graduate degree focusing on public health practice, policy, and research to improve community health." },
  { name: "Master of Science", abbreviation: "MS", summary: "A graduate degree in various scientific fields, including healthcare, often focusing on research and advanced knowledge in a specific area." },
  { name: "Physician Assistant-Certified", abbreviation: "PA-C", summary: "A certification for physician assistants who have completed an accredited educational program and passed a national certification exam." },
  { name: "Doctor of Philosophy", abbreviation: "PhD", summary: "The highest academic degree awarded in various fields, including healthcare, focusing on original research and advanced knowledge." },
  { name: "Doctor of Psychology", abbreviation: "PsyD", summary: "A professional doctoral degree focusing on clinical practice in psychology, including assessment and therapy." },
  { name: "Registered Nurse", abbreviation: "RN", summary: "A healthcare professional who has completed a nursing program and passed a national licensing exam to provide patient care." }
]

AGE_GROUPS.each do |ag| AgeGroup.create! name: ag end
NF_TYPES.each do |nt| NfType.create! name: nt[:name], abbreviation: nt[:abbreviation], active: true end
DISIPLINES.each do |d| Disipline.create! name: d[:name], summary: d[:summary], active: true end
SUFFIXES.each do |s| Suffix.create! name: s[:name], abbreviation: s[:abbreviation], summary: s[:summart], active: true end

Facility.create! title: "University of Alabama at Birmingham", primary_state: "AL"
Facility.create! title: "Arkansas Children's Hospital", primary_state: "AR"
Facility.create! title: "Phoenix Children's Hospital", primary_state: "AZ"
Facility.create! title: "Mayo Clinic Hospital - Phoenix", primary_state: "AZ"
Facility.create! title: "Arizona Pediatric Neurology & Neurogenetics Associates", primary_state: "AZ"
Facility.create! title: "City of Hope", primary_state: "CA"
Facility.create! title: "House Clinic", primary_state: "CA"
Facility.create! title: "University of California, Los Angeles - UCLA", primary_state: "CA"
Facility.create! title: "Children's Hospital of Los Angeles", primary_state: "CA"
Facility.create! title: "Cedars-Sinai Medical Center", primary_state: "CA"
Facility.create! title: "Children's Hospital of Orange County", primary_state: "CA"
Facility.create! title: "Stanford/Lucile Packard Children's Hospital", primary_state: "CA"
Facility.create! title: "Stanford Health Center", primary_state: "CA"
Facility.create! title: "UC Davis Health - MIND Institute", primary_state: "CA"
Facility.create! title: "Kaiser Permanente", primary_state: "CA"
Facility.create! title: "Panossian Plastic Surgery", primary_state: "CA"
Facility.create! title: "UCSF Bernioff Children's Hospital", primary_state: "CA"
Facility.create! title: "UC Irvine Medical Center", primary_state: "CA"
Facility.create! title: "Miller Children's and Women's Hospital", primary_state: "CA"
Facility.create! title: "UC San Diego Health", primary_state: "CA"
Facility.create! title: "Children's Hospital Colorado", primary_state: "CO"
Facility.create! title: "Connecticut Children's Medical Center", primary_state: "CT"
Facility.create! title: "Yale New Haven Hospital", primary_state: "CT"
Facility.create! title: "Children's National Health System", primary_state: "DC"
Facility.create! title: "Nemours/Alfred I. duPont Hospital for Children", primary_state: "DE"
Facility.create! title: "UF Health Neuromedicine - Neuromedicine Hospital", primary_state: "FL"
Facility.create! title: "UF Health Pediatric Multispecialty Center - Prudential Drive", primary_state: "FL"
Facility.create! title: "Nicklaus Children's Hospital", primary_state: "FL"
Facility.create! title: "Florida NF Clinic at AdventHealth Orlando", primary_state: "FL"
Facility.create! title: "Johns Hopkins All Children's Hospital", primary_state: "FL"
Facility.create! title: "Moffitt Cancer Center", primary_state: "FL"
Facility.create! title: "Emory University/Children's Healthcare of Atlanta", primary_state: "GA"
Facility.create! title: "Children's Hospital of Georgia", primary_state: "GA"
Facility.create! title: "UI Stead Family Children's Hospital", primary_state: "IA"
Facility.create! title: "Northwestern Memorial Hospital", primary_state: "IL"
Facility.create! title: "UI Health", primary_state: "IL"
Facility.create! title: "University of Chicago Medicine", primary_state: "IL"
Facility.create! title: "Ann and Robert H. Lurie Children's Hospital of Chicago", primary_state: "IL"
Facility.create! title: "McKay McKinnon, MD", primary_state: "IL"
Facility.create! title: "UChicago Medicine - Orland Park", primary_state: "IL"
Facility.create! title: "Indiana University Neuroscience Center", primary_state: "IN"
Facility.create! title: "Riley Children's Health - IU Health", primary_state: "IN"
Facility.create! title: "University of Kentucky", primary_state: "KY"
Facility.create! title: "University of Louisville", primary_state: "KY"
Facility.create! title: "Louisiana State University and Children's Hospital New Orleans", primary_state: "LA"
Facility.create! title: "Tufts Medical Center", primary_state: "MA"
Facility.create! title: "Boston Children's Hospital", primary_state: "MA"
Facility.create! title: "Massachusetts General Hospital", primary_state: "MA"
Facility.create! title: "The Johns Hopkins Hospital", primary_state: "MD"
Facility.create! title: "National Cancer Institute", primary_state: "MD"
Facility.create! title: "University of Michigan - Adult Genetics", primary_state: "MI"
Facility.create! title: "University of Michigan Pediatric Genetics", primary_state: "MI"
Facility.create! title: "Henry Ford Health System NF Clinic", primary_state: "MI"
Facility.create! title: "NF Clinic Grand Rapids", primary_state: "MI"
Facility.create! title: "Corewell Health East - NF Clinic", primary_state: "MI"
Facility.create! title: "University of Michigan Neurosurgery", primary_state: "MI"
Facility.create! title: "Children's Hospitals and Clinics of Minnesota", primary_state: "MN"
Facility.create! title: "M Health - University of Minnesota Medical Center and Masonic Children's Hospital", primary_state: "MN"
Facility.create! title: "Mayo Clinic", primary_state: "MN"
Facility.create! title: "Children's Mercy Hospital", primary_state: "MO"
Facility.create! title: "Children's Mercy Hospital", primary_state: "MO"
Facility.create! title: "Washington University/Street Louis Children's Hospital", primary_state: "MO"
Facility.create! title: "SSM Health Cardinal Glennon Children's Hospital", primary_state: "MO"
Facility.create! title: "University of North Carolina Hospitals", primary_state: "NC"
Facility.create! title: "Duke University Medical Center", primary_state: "NC"
Facility.create! title: "Wake Forest Baptist Health", primary_state: "NC"
Facility.create! title: "Rutgers New Jersey Medical School", primary_state: "NJ"
Facility.create! title: "Street Joseph's Regional Medical Center", primary_state: "NJ"
Facility.create! title: "University of Nevada Las Vegas School of Medicine", primary_state: "NV"
Facility.create! title: "Montefiore Medical Center", primary_state: "NY"
Facility.create! title: "Children's Hospital at Montefiore", primary_state: "NY"
Facility.create! title: "John R. Oishei Children's Hospital", primary_state: "NY"
Facility.create! title: "New York Presbyterian Morgan Stanley Children's Hospital Columbia University Medical Center", primary_state: "NY"
Facility.create! title: "NYU Langone Health", primary_state: "NY"
Facility.create! title: "New York University Division of Otology and NeurotologyMedical Center", primary_state: "NY"
Facility.create! title: "Memorial Sloan Kettering NF Program", primary_state: "NY"
Facility.create! title: "Rochester General Hospital", primary_state: "NY"
Facility.create! title: "Golisano Children's Hospital at University of Rochester Medical Center", primary_state: "NY"
Facility.create! title: "Albany Medical Center", primary_state: "NY"
Facility.create! title: "Roswell Park Comprehensive Cancer Center", primary_state: "NY"
Facility.create! title: "Akron Children's Hospital", primary_state: "OH"
Facility.create! title: "UH Cleveland Medical Center", primary_state: "OH"
Facility.create! title: "Cincinnati Children's Hospital Medical Center", primary_state: "OH"
Facility.create! title: "UH Rainbow Babies and Children's Hospital", primary_state: "OH"
Facility.create! title: "Cleveland Clinic", primary_state: "OH"
Facility.create! title: "The Ohio State University Wexner Medical Center", primary_state: "OH"
Facility.create! title: "Nationwide Children's Hospital", primary_state: "OH"
Facility.create! title: "University of Oklahoma Health Sciences Center", primary_state: "OK"
Facility.create! title: "Randall Children's Hospital at Legacy Emanuel", primary_state: "OR"
Facility.create! title: "Swedish Medical Center", primary_state: "OR"
Facility.create! title: "Oregon Health & Science University", primary_state: "OR"
Facility.create! title: "Oregon Health & Science University - Brain Institute", primary_state: "OR"
Facility.create! title: "The Children's Hospital of Philadelphia", primary_state: "PA"
Facility.create! title: "Children's Hospital of Pittsburgh of UPMC", primary_state: "PA"
Facility.create! title: "Geisinger Medical Center - Neurosurgery", primary_state: "PA"
Facility.create! title: "Lifespan Cancer Institute", primary_state: "RI"
Facility.create! title: "Children's Hospital Greenville Health System", primary_state: "SC"
Facility.create! title: "Sanford Health  (let Gregg know once it's on our site.)", primary_state: "SD"
Facility.create! title: "Le Bonheur Children's Hospital", primary_state: "TN"
Facility.create! title: "Vanderbilt University Medical Center/Vanderbilt-Ingram Cancer Center", primary_state: "TN"
Facility.create! title: "UT Southwestern/Children's Health Dallas", primary_state: "TX"
Facility.create! title: "Vida Bela Plastic Surgery", primary_state: "TX"
Facility.create! title: "Cook Children's Health Care System", primary_state: "TX"
Facility.create! title: "Baylor College of Medicine Medical Center", primary_state: "TX"
Facility.create! title: "The University of Texas MD Anderson Cancer Center Children's Cancer Hospital", primary_state: "TX"
Facility.create! title: "Texas Children's Hospital/Baylor College of Medicine", primary_state: "TX"
Facility.create! title: "Baylor College of Medicine-Plastic Surgery", primary_state: "TX"
Facility.create! title: "University of Utah", primary_state: "UT"
Facility.create! title: "Children's Hospital of the Kings Daughters", primary_state: "VA"
Facility.create! title: "Children's Hospital of Richmond at VCU", primary_state: "VA"
Facility.create! title: "University of Vermont Medical Center", primary_state: "VT"
Facility.create! title: "Swedish Medical Center", primary_state: "WA"
Facility.create! title: "University of Washington Medical Center - Montlake", primary_state: "WA"
Facility.create! title: "Seattle Children's Hospital", primary_state: "WA"
Facility.create! title: "University of Wisconsin/American Family Children's Hospital", primary_state: "WI"
Facility.create! title: "Ascension Columbia St. Mary's", primary_state: "WI"
Facility.create! title: "Froedtert and Medical College of Wisconsin", primary_state: "WI"
Facility.create! title: "Children's Wisconsin", primary_state: "WI"
Facility.create! title: "WVU Medicine Children's Hospital", primary_state: "WV"
Facility.create! title: "Medical College of Wisconsin", primary_state: "WI"
Facility.create! title: "University of Virginia Charlottesville", primary_state: "VA"
Facility.create! title: "Seattle Children's Hospital", primary_state: "WA"
Facility.create! title: "University of Washington", primary_state: "WA"
Facility.create! title: "Dell Children's Medical Center", primary_state: "TX"
Facility.create! title: "Connecticut Children's", primary_state: "CT"
Facility.create! title: "Valley Children's Healthcare", primary_state: "CA"
Facility.create! title: "Lucille Packard Children's Hospital (Stanford)", primary_state: "CT"
Facility.create! title: "Stanford Children's Health", primary_state: "CT"

Location.create! name: "UAB NF Clinic", address_line_1: "720 20th Street South", address_line_2: "Kaul 230", city: "Birmingham", state: "AL", zipcode: "35233", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 1
Location.create! name: "Neuroscience Center", address_line_1: "1 Children's Way", address_line_2: "", city: "Little Rock", state: "AR", zipcode: "72202", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 2
Location.create! name: "Barrow Neurological Institute", address_line_1: "1919 E Thomas Road", address_line_2: "", city: "Phoenix", state: "AZ", zipcode: "85016", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 3
Location.create! name: "Clinical Genomics/Neurology", address_line_1: "5881 E. Mayo Boulevard", address_line_2: "", city: "Phoenix", state: "AZ", zipcode: "85054", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 4
Location.create! name: "Neurology", address_line_1: "3330 N 2nd Street", address_line_2: "Ste 402", city: "Phoenix", state: "AZ", zipcode: "85012", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 5
Location.create! name: "Cancer Center", address_line_1: "1500 E. Duarte Road", address_line_2: "", city: "Duarte", state: "CA", zipcode: "91010", facility_id: 6
Location.create! name: "NF Clinic", address_line_1: "2100 West Third Street", address_line_2: "Ste 111", city: "Los Angeles", state: "CA", zipcode: "90057", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 7
Location.create! name: "UCLA Multidisciplinary NF Clinic", address_line_1: "300 Stein Plaza Driveway", address_line_2: "Ste. 420", city: "Los Angeles", state: "CA", zipcode: "90095", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 8
Location.create! name: "Comprehensive Neurofibromatosis Clinic", address_line_1: "4650 Sunset Boulevard", address_line_2: " MS #82", city: "Los Angeles", state: "CA", zipcode: "90027", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 9
Location.create! name: "Department of Pediatrics", address_line_1: "8723 Alden Drive", address_line_2: "SSB Suite 240", city: "Los Angeles", state: "CA", zipcode: "90048", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 10
Location.create! name: "CHOC Children's Neurofibromatosis Program", address_line_1: "1201 W. La Veta Avenue", address_line_2: "", city: "Orange", state: "CA", zipcode: "92868", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 11
Location.create! name: "RASopathy/Neurofibromatosis Genetic Clinic", address_line_1: "730 Welch Road", address_line_2: "Suite 317", city: "Palo Alto", state: "CA", zipcode: "94304", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 12
Location.create! name: "Stanford Neuroscience Health Center", address_line_1: "213 Quarry Road", address_line_2: "", city: "Palo Alto", state: "CA", zipcode: "94304", nf_type_ids: [ 1, 2 ], age_group_ids: [2], facility_id: 13
Location.create! name: "NF/Ras Pathway Clinic - 'Ras Clinic'", address_line_1: "2825 50th Street", address_line_2: "", city: "Sacramento", state: "CA", zipcode: "95817", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 14
Location.create! name: "Sacramento Medical Center", address_line_1: "1650 Response Road", address_line_2: "", city: "Sacramento", state: "CA", zipcode: "95815", facility_id: 15
Location.create! name: "Plastic Surgery", address_line_1: "39 Congress Street", address_line_2: "Suite 402", city: "Pasadena", state: "CA", zipcode: "91105", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 16
Location.create! name: "Child and Adolescent Neurology Clinic", address_line_1: "1825 Fourth Street", address_line_2: "Fifth Floor Suite 5A", city: "San Francisco", state: "CA", zipcode: "94158", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 17
Location.create! name: "Adult Genetics Clinic", address_line_1: "101 The City Drive", address_line_2: "Pavilion 1, UCI Medical Center", city: "Orange", state: "CA", zipcode: "92868", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 18
Location.create! name: "Genetics Clinic", address_line_1: "2701 Atlantic Avenue", address_line_2: "Cherese Mari Laulhere Children's Village at Miller Children's and Women's Hospital", city: "Long Beach", state: "CA", zipcode: "90806", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 19
Location.create! name: "Moores Cancer Center at UC San Diego Health", address_line_1: "3855 Health Sciences Drive", address_line_2: "", city: "La Jolla", state: "CA", zipcode: "92037", facility_id: 20
Location.create! name: "Neurofibromatosis Program", address_line_1: "13123 East 16th Avenue", address_line_2: "", city: "Aurora", state: "CO", zipcode: "80045", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 21
Location.create! name: "Neurology", address_line_1: "505 Farmington Avenue", address_line_2: "2nd Floor", city: "Farmington", state: "CT", zipcode: "06032", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 22
Location.create! name: "Neurocutaneous Syndrome Clinic", address_line_1: "20 York Street", address_line_2: "", city: "New Haven", state: "CT", zipcode: "06510", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 23
Location.create! name: "The Gilbert Family Neurofibromatosis Institute", address_line_1: "111 Michigan Avenue", address_line_2: "", city: "Washington", state: "DC", zipcode: "20010", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 24
Location.create! name: "Nemours RASopathy & Neurofibromatosis Clinic", address_line_1: "1600 Rockland Road", address_line_2: "", city: "Wilmington", state: "DE", zipcode: "20010", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 25
Location.create! name: "Neurology and Neurosurgery", address_line_1: "1505 SW Archer Road", address_line_2: "1st floor", city: "Gainesville", state: "FL", zipcode: "32608", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 26
Location.create! name: "Pediatric Genetics", address_line_1: "841 Prudential Drive", address_line_2: "Suite 1900", city: "Jacksonville", state: "FL", zipcode: "32610", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 27
Location.create! name: "Neurofibromatosis Center", address_line_1: "3100 SW 62 Avenue", address_line_2: "Suite 301", city: "Miami", state: "FL", zipcode: "33155", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 28
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "601 E. Rollins Street", address_line_2: "", city: "Orlando", state: "FL", zipcode: "32803", nf_type_ids: [ 1, 2 ], age_group_ids: [1], facility_id: 29
Location.create! name: "Neurocutaneous Disorders Clinic", address_line_1: "601 5th Street South", address_line_2: "Suite 302", city: "St Petersburg", state: "FL", zipcode: "33701", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 30
Location.create! name: "Moffitt Genetic Neuro-oncology Clinic", address_line_1: "12902 USF Magnolia Drive", address_line_2: "", city: "Tampa", state: "FL", zipcode: "33612", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 31
Location.create! name: "Comprehensive Neurofibromatosis Clinic", address_line_1: "1400 Tullie Road NE", address_line_2: " 4th Floor, Center for Advanced Pediatrics", city: "Atlanta", state: "GA", zipcode: "30342", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 32
Location.create! name: "Georgia Neurofibromatosis Clinic, Pediatric", address_line_1: "1446 Harper Street", address_line_2: "", city: "Augusta", state: "GA", zipcode: "30912", nf_type_ids: [ 1, 2 ], age_group_ids: [1, 2], facility_id: 33
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "200 Hawkins Drive", address_line_2: "2400 Colloton Pavilion", city: "Iowa City", state: "IA", zipcode: "52242", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 34
Location.create! name: "Neuro Oncology", address_line_1: "675 N. St Clair Street", address_line_2: "Suite 20-100", city: "Chicago", state: "IL", zipcode: "60611", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 35
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "1801 West Taylor Street", address_line_2: "Outpatient Care Center, Suite 2E", city: "Chicago", state: "IL", zipcode: "60612", nf_type_ids: [ 1, 2 ], age_group_ids: [1, 2], facility_id: 36
Location.create! name: "Neurofibromatosis Program", address_line_1: "5721 S Maryland Avenue", address_line_2: "", city: "Chicago", state: "IL", zipcode: "60637", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 37
Location.create! name: "Neurofibromatosis Program", address_line_1: "467 West Deming Place", address_line_2: "Suite 900", city: "Chicago", state: "IL", zipcode: "60614", nf_type_ids: [ 1, 2 ], age_group_ids: [1], facility_id: 38
Location.create! name: "Plastic & Reconstructive Surgery", address_line_1: "680 N Lake Shore Drive", address_line_2: "#1208", city: "Chicago", state: "IL", zipcode: "60611", nf_type_ids: [ 1, 2 ], age_group_ids: [1, 2], facility_id: 39
Location.create! name: "Neurofibromatosis Program", address_line_1: "14290 South La Grange Road", address_line_2: "", city: "Orland Park", state: "IL", zipcode: "60462", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 40
Location.create! name: "Neurology & Neuro-Oncology", address_line_1: "355 W. 16th St", address_line_2: "Suite 5400", city: "Indianapolis", state: "IN", zipcode: "46202", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 41
Location.create! name: "Riley Child Neurology", address_line_1: "575 Riley Hospital Drive", address_line_2: "", city: "Indianapolis", state: "IN", zipcode: "46202", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 42
Location.create! name: "Kentucky Neuroscience Institute Neurofibromatosis Clinic", address_line_1: "740 South Limestone", address_line_2: "First Floor, Wing C, Room B101", city: "Lexington", state: "KY", zipcode: "40536", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 43
Location.create! name: "Weisskopf Center", address_line_1: "411 E. Chestnut Street", address_line_2: "", city: "Louisville", state: "KY", zipcode: "40202", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 44
Location.create! name: "Children's Hospital Neurofibromatosis Clinic", address_line_1: "200 Henry Clay Avenue", address_line_2: "", city: "New Orleans", state: "LA", zipcode: "70118", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 45
Location.create! name: "Genetics", address_line_1: "860 Washington Street", address_line_2: "South Building, 2nd Floor", city: "Boston", state: "MA", zipcode: "02111", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 46
Location.create! name: "Pediatric Multidisciplinary Neurofibromatosis Program", address_line_1: "300 Longwood Avenue", address_line_2: "", city: "Boston", state: "MA", zipcode: "02115", nf_type_ids: [ 1, 2 ], age_group_ids: [1], facility_id: 47
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "55 Fruit Street", address_line_2: "", city: "Boston", state: "MA", zipcode: "02114", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 48
Location.create! name: "Comprehensive Neurofibromatosis Center", address_line_1: "600 N. Wolfe Street", address_line_2: "Cancer Research Building II 1M16", city: "Baltimore", state: "MD", zipcode: "21287", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 49
Location.create! name: "Pediatric Oncology Branch", address_line_1: "31 Center Drive", address_line_2: "Building 10, Room 1W-3750", city: "Bethesda", state: "MD", zipcode: "20892", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 50
Location.create! name: "The Adult Genetics Clinic", address_line_1: "4029 Ave Maria Drive", address_line_2: "Lobby C, Suite 1300", city: "Ann Arbor", state: "MI", zipcode: "48105", nf_type_ids: [ 1, 3 ], age_group_ids: [2], facility_id: 51
Location.create! name: "C.S. Mott Children's Hospital - Pediatric Genetics", address_line_1: "1540 E. Hospital Drive", address_line_2: "", city: "Ann Arbor", state: "MI", zipcode: "48109", nf_type_ids: [ 1 ], age_group_ids: [1], facility_id: 52
Location.create! name: "Neurology and Neuro-Oncology", address_line_1: "2799 W. Grand Boulevard", address_line_2: "K-11", city: "Detroit", state: "MI", zipcode: "48202", nf_type_ids: [ 1, 3 ], age_group_ids: [1, 2], facility_id: 53
Location.create! name: "Helen DeVos Children's Hospital Children's Outpatient Center", address_line_1: "330 Barclay NE", address_line_2: "Suite 203", city: "Grand Rapids", state: "MI", zipcode: "49503", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 54
Location.create! name: "McBrien Pediatric Neurology - Royal Oak", address_line_1: "3555 W 13-Mile Road", address_line_2: "", city: "Royal Oak", state: "MI", zipcode: "48073", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 55
Location.create! name: "Department of Neurosurgery", address_line_1: "1500 E Medical Center Drive", address_line_2: "Floor 2 Reception G", city: "Ann Arbor", state: "MI", zipcode: "48109", nf_type_ids: [  2 ], age_group_ids: [1, 2], facility_id: 56
Location.create! name: "Neurocutaneous Syndromes Clinic", address_line_1: "2530 Chicago Avenue South", address_line_2: "", city: "Minneapolis", state: "MN", zipcode: "55404", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 57
Location.create! name: "University of Minnesota Neurofibromatosis Clinic", address_line_1: "2450 Riverside Avenue", address_line_2: "", city: "Minneapolis", state: "MN", zipcode: "55454", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 58
Location.create! name: "Mayo Clinic - Department of Clinical Genomics - Neurofibromatosis Clinic", address_line_1: "200 First Street SW", address_line_2: "", city: "Rochester", state: "MN", zipcode: "55905", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 59
Location.create! name: "Comprehensive Neurofibromatosis Specialty Clinic", address_line_1: "2401 Gillham Road", address_line_2: "", city: "Kansas City", state: "MO", zipcode: "64108", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 60
Location.create! name: "Comprehensive Neurofibromatosis Specialty Clinic", address_line_1: "2401 Gillham Road", address_line_2: "", city: "Kansas City", state: "MO", zipcode: "64108", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 61
Location.create! name: "Washington University Neurofibromatosis (NF) Center", address_line_1: "One Children's Place", address_line_2: "", city: "St Louis", state: "MO", zipcode: "63110", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 62
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "1465 South Grand Boulevard", address_line_2: "", city: "St Louis", state: "MO", zipcode: "63104", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 63
Location.create! name: "UNC Hospitals Neurofibromatosis Clinic", address_line_1: "101 Manning Drive", address_line_2: "", city: "Chapel Hill", state: "NC", zipcode: "27517", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 64
Location.create! name: "Duke Comprehensive Neurofibromatosis Clinic", address_line_1: "2301 Erwin Road", address_line_2: "", city: "Durham", state: "NC", zipcode: "27710", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 65
Location.create! name: "Neurofibromatosis Multidisciplinary Clinic", address_line_1: "Medical Center Boulevard", address_line_2: "", city: "Winston-Salem", state: "NC", zipcode: "27157", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 66
Location.create! name: "The Neurofibromatosis Center of New Jersey", address_line_1: "90 Bergen Street", address_line_2: "Suite 8100", city: "Newark", state: "NJ", zipcode: "07103", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 67
Location.create! name: "Neurofibromatosis Diagnostic and Treatment Center", address_line_1: "703 Main Street", address_line_2: "", city: "Paterson", state: "NJ", zipcode: "07503", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 68
Location.create! name: "Department of Pediatric Genetics", address_line_1: "1524 Pinto Lane", address_line_2: "3rd Floor", city: "Las Vegas", state: "NV", zipcode: "89106", nf_type_ids: [ 1, 2 ], age_group_ids: [1], facility_id: 69
Location.create! name: "Neurofibromatosis Center at Montefiore", address_line_1: "3415 Bainbridge Avenue", address_line_2: "", city: "Bronx", state: "NY", zipcode: "10467", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 70
Location.create! name: "The Saul R. Korey Department of Neurology", address_line_1: "3415 Bainbridge Avenue", address_line_2: "", city: "Bronx", state: "NY", zipcode: "10467", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 71
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "818 Ellicott Street", address_line_2: "", city: "Buffalo", state: "NY", zipcode: "14263", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 72
Location.create! name: "The ColumbiaDoctors Neurofibromatosis (NF) Program", address_line_1: "3959 Broadway", address_line_2: "", city: "New York", state: "NY", zipcode: "10032", nf_type_ids: [ 1, 2 ], age_group_ids: [1, 2], facility_id: 73
Location.create! name: "Comprehensive Neurofibromatosis Center", address_line_1: "160 East 32nd Street", address_line_2: "Level L3 Medical, 2nd Floor", city: "New York", state: "NY", zipcode: "10016", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 74
Location.create! name: "Otology & Neurotology", address_line_1: "550 First Avenue", address_line_2: "", city: "New York", state: "NY", zipcode: "10016", nf_type_ids: [  2 ], age_group_ids: [1, 2], facility_id: 75
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "1275 York Avenue", address_line_2: "", city: "New York", state: "NY", zipcode: "10065", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 76
Location.create! name: "Boev Clinic", address_line_1: "1445 Portland Avenue", address_line_2: "Suite 309", city: "Rochester", state: "NY", zipcode: "14621", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 77
Location.create! name: "Comprehensive Neurofibromatosis Clinic", address_line_1: "601 Elmwood Avenue", address_line_2: "Box 631", city: "Rochester", state: "NY", zipcode: "14642", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 78
Location.create! name: "Neurofibromatosis Clinic and Brain Tumor Program", address_line_1: "43 New Scotland Avenue", address_line_2: "A Building, 5th Floor", city: "Albany", state: "NY", zipcode: "12008", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 79
Location.create! name: "Adult Neurofibromatosis Clinic", address_line_1: "665 Elm Street", address_line_2: "Elm & Carlton Streets", city: "Buffalo", state: "NY", zipcode: "14263", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 80
Location.create! name: "Comprehensive Neurofibromatosis Clinic", address_line_1: "215 West Bowery Street", address_line_2: "Level 4", city: "Akron", state: "OH", zipcode: "44308", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 81
Location.create! name: "UH Cleveland Medical Center", address_line_1: "11100 Euclid Avenue", address_line_2: "", city: "Cleveland", state: "OH", zipcode: "44106", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 82
Location.create! name: "Neurofibromatosis Tumor Program", address_line_1: "3333 Burnet Avenue", address_line_2: "Division of Human Genetics", city: "Cincinnati", state: "OH", zipcode: "45229", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 83
Location.create! name: "Multidisciplinary Neurocutaneous Syndromes Clinic", address_line_1: "11100 Euclid Avenue", address_line_2: "", city: "Cleveland", state: "OH", zipcode: "44106", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 84
Location.create! name: "Neurofibromatosis Center", address_line_1: "9500 Euclid Avenue", address_line_2: "6th Floor", city: "Cleveland", state: "OH", zipcode: "44195", nf_type_ids: [ 1, 2 ], age_group_ids: [1, 2], facility_id: 85
Location.create! name: "Neurofibromatosis Tumor Program", address_line_1: "915 Olentangy River Road", address_line_2: "The Ohio State Eye and Ear Institute Suite 4000", city: "Columbus", state: "OH", zipcode: "43212", nf_type_ids: [ 1, 2 ], age_group_ids: [1, 2], facility_id: 86
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "700 Children's Drive", address_line_2: "", city: "Columbus", state: "OH", zipcode: "43205", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 87
Location.create! name: "University of Oklahoma NF Clinic", address_line_1: "1200 Children's Avenue", address_line_2: "OU Children's Physicians Building, Suite 5100", city: "Oklahoma City", state: "OK", zipcode: "73104", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 88
Location.create! name: "Randall Children's Hospital NF Clinic", address_line_1: "501 N. Graham Street", address_line_2: "Suite 330 B, Randall Children's Hospital at Legacy Emanuel", city: "Portland", state: "OR", zipcode: "98227", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 89
Location.create! name: "Swedish Neurofibromatosis Center - The Ben & Catherine Ivy Center for Advanced Brain Tumor Treatment Swedish Neuroscience Institute", address_line_1: "500 17th Ave ", address_line_2: "STE 540, Swedish Neuroscience Institute James Tower - Cherry Hill Campus", city: "Seatle", state: "OR", zipcode: "98122", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 90
Location.create! name: "Genetics and Birth Defects Clinic at Doernbecher", address_line_1: "707 S.W. Gaines Street", address_line_2: "", city: "Portland", state: "OR", zipcode: "97239", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 91
Location.create! name: "Nerve Center", address_line_1: "3303 S Bond Avenue", address_line_2: "", city: "Portland", state: "OR", zipcode: "97239", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 92
Location.create! name: "University of Pennsylvania Neurofibromatosis Clinic", address_line_1: "3501 Civic Center Boulevard", address_line_2: "", city: "Philadelphia", state: "PA", zipcode: "19104", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 93
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "4401 Penn Avenue", address_line_2: "", city: "Pittsburgh", state: "PA", zipcode: "15224", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 94
Location.create! name: "Neurosurgery", address_line_1: "100 North Academy Avenue", address_line_2: "", city: "Danville", state: "PA", zipcode: "17822", nf_type_ids: [ 1, 2 ], age_group_ids: [1, 2], facility_id: 95
Location.create! name: "Lifespan Cancer Institute", address_line_1: "593 Eddy Street", address_line_2: "", city: "Providence", state: "RI", zipcode: "02903", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 96
Location.create! name: "BI-LO Charities Children's Cancer Center", address_line_1: "900 W. Faris Road", address_line_2: "", city: "Greenville", state: "SC", zipcode: "29605", nf_type_ids: [ 1, 2 ], age_group_ids: [1], facility_id: 97
Location.create! name: "Pediatric Neurosurgery", address_line_1: "1210 W. 18th Street", address_line_2: "Suite 100", city: "Sioux Falls", state: "SD", zipcode: "57104", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 98
Location.create! name: "Le Bonheur Outpatient Center - Genetics", address_line_1: "51 N. Dunlap Street", address_line_2: "4th Floor", city: "Memphis", state: "TN", zipcode: "38105", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 99
Location.create! name: "VICC Neurofibromatosis Clinic", address_line_1: "1500 21st Avenue", address_line_2: "Village at Vanderbilt, Suite 2500 ", city: "Nashville", state: "TN", zipcode: "37212", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 100
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "1935 Medical District Drive", address_line_2: "", city: "Dallas", state: "TX", zipcode: "75235", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 101
Location.create! name: "Neurofibroma and Operative Plexiform Removal ", address_line_1: "3108 Midway Road", address_line_2: "Suite 102", city: "Plano", state: "TX", zipcode: "75093", facility_id: 102
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "1500 Cooper Street", address_line_2: "", city: "Fort Worth", state: "TX", zipcode: "76104", nf_type_ids: [ 1, 2 ], age_group_ids: [1], facility_id: 103
Location.create! name: "Adult Genetics Clinic", address_line_1: "7200 Cambridge Street", address_line_2: "McNair Campus, 9th Floor, Suite 9A", city: "Houston", state: "TX", zipcode: "77030", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 104
Location.create! name: "Pediatric Neurofibromatosis Clinic", address_line_1: "1515 Holcombe Blvd", address_line_2: "", city: "Houston", state: "TX", zipcode: "77030", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 105
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "6701 Fannin", address_line_2: "16th Floor", city: "Houston", state: "TX", zipcode: "77030", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 106
Location.create! name: "Neurofibroma and Operative Plexiform Removal Division of Adult Plastic Surgery, Department of Surgery", address_line_1: "1977 Butler Boulevard", address_line_2: "Suite E6.100", city: "Houston", state: "TX", zipcode: "77030", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 107
Location.create! name: "Neurofibromatosis Clinic", address_line_1: "81 N Mario Capecchi Drive", address_line_2: "", city: "Salt Lake City", state: "UT", zipcode: "84113", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1, 2], facility_id: 108
Location.create! name: "Comprehensive Neurofibromatosis Clinic", address_line_1: "850 Southampton Avenue", address_line_2: "", city: "Norfolk", state: "VA", zipcode: "23510", nf_type_ids: [ 1, 2 ], age_group_ids: [1], facility_id: 109
Location.create! name: "Pediatric NF Clinic at VCU", address_line_1: "1000 East Broad Street", address_line_2: "", city: "Richmond", state: "VA", zipcode: "23219", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 110
Location.create! name: "Neurology", address_line_1: "111 Colchester Avenue", address_line_2: "", city: "Burlington", state: "VT", zipcode: "05401", nf_type_ids: [ 1 ], age_group_ids: [1], facility_id: 111
Location.create! name: "Swedish Neurofibromatosis Center - Ivy Center for Advanced Brain Tumor Treatment", address_line_1: "550 17th Avenue", address_line_2: "", city: "Seattle", state: "WA", zipcode: "98122", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 112
Location.create! name: "Alvord Brain Tumor Center - Neurology", address_line_1: "1959 NE Pacific Street", address_line_2: "Pacific Tower, 7th Flr, EE728, Box 356182", city: "Seattle", state: "WA", zipcode: "98195", nf_type_ids: [ 1, 2 ], age_group_ids: [2], facility_id: 113
Location.create! name: "Neurology Clinic", address_line_1: "4800 Sand Point Way NE", address_line_2: "", city: "Seattle", state: "WA", zipcode: "98105", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 114
Location.create! name: "Comprehensive Pediatric Neurocutaneous Disorders Clinic", address_line_1: "1675 Highland Avenue", address_line_2: "", city: "Madison", state: "WI", zipcode: "53792", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 115
Location.create! name: "Van Dyke Cancer Center", address_line_1: "2350 N Lake Drive", address_line_2: "Suite G01, CSM Cancer Center", city: "Milwaukee", state: "WI", zipcode: "53211", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 116
Location.create! name: "Hope Clinic, Cancer Center", address_line_1: "9200 W. Wisconsin Avenue", address_line_2: "", city: "Milwaukee", state: "WI", zipcode: "53226", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [2], facility_id: 117
Location.create! name: "NF/RASopathy Center", address_line_1: "9000 W. Wisconsin Avenue", address_line_2: "MS 716", city: "Milwaukee", state: "WI", zipcode: "53226", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 118
Location.create! name: "Department of Child Neurology", address_line_1: "One Stadium Drive", address_line_2: "", city: "Morgantown", state: "WV", zipcode: "26506", nf_type_ids: [ 1, 2, 3 ], age_group_ids: [1], facility_id: 119