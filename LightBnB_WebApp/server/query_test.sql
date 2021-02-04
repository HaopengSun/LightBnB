SELECT avg(property_reviews.rating) as average_rating,
properties.cost_per_night
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%Montreal%'
AND properties.cost_per_night >= 10000
AND properties.cost_per_night <= 60000
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 5;

INSERT INTO properties (
title, description, owner_id,
cover_photo_url, thumbnail_photo_url, cost_per_night,
parking_spaces, number_of_bathrooms, number_of_bedrooms,
active, province, city, country, street, post_code) 
VALUES (
'Understanding guide',
'Composed manufacturing coast came size being greatly dropped she equipment fish think thee under suppose upward there attached sense earn shade visit show steam be leg brother iron stems black happily felt gasoline powerful weather excellent loud sky total own jump angry also mission stuck won mighty special land table eager try joined rather funny seen mouse community member compound upper among saddle stay better hardly block fourth threw already spend function particularly clock young fifteen clear between flew add riding success jet people rapidly wealth announced pure raise money modern syllable luck these understanding discussion extra hand degree paid farmer accurate worse quick book we bar enemy best stone orbit reason fuel exclaimed ourselves meant put earn raise real week hope porch pie basis fruit battle must seen progress grew related tomorrow slide happily bus brief third our rough inside if lack gather pale upward roof swept determine made rough strength signal active loud gold upon policeman accident pan wash leader universe dish twice own pure fill lion have toy month column giving pig still inch will tropical cutting attached sign job principle fun eye pet location fruit somebody herd whispered motion invented religious hot rather supply offer water whether present disappear add experience store behind dozen been bark shake round eleven two medicine product silver team dawn complex glad medicine mood winter taken actually visit fierce fear when park pick zoo union more object friendly baseball day greatest independent count glad involved office excited bone volume dinner warn nine horn scientist practical successful join happen nodded table average record piece heard dear dot cake joy instead evidence according seems nor welcome child deer separate interest locate cloth glad language steam brave wrong trail remain off strange thy sweet people shelter curve own parent am train state along bell',
175, 'https://images.pexels.com/photos/2098913/pexels-photo-2098913.jpeg',
'https://images.pexels.com/photos/2098913/pexels-photo-2098913.jpeg?auto=compress&cs=tinysrgb&h=350',
26830, 3, 9, 8, true, 'Nova Scotia', 'Amherst', 'Canada', '1873 Motdi Point', '78229');