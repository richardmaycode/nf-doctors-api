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
