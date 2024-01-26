CREATE TABLE providers (
    providerId integer PRIMARY KEY,
    name varchar(10),
    longName varchar(50)
);

CREATE TABLE categories (
    categoryId integer PRIMARY KEY,
    name varchar(30),
    description varchar(400)
);

CREATE TABLE services (
    serviceId integer PRIMARY KEY,
    name varchar(50),
    link varchar(100),
    subCategory int,
    provider int,
    description varchar(400)
);

CREATE TABLE subCategories (
    subCategoryId integer PRIMARY KEY,
    name varchar(50),
    category int
);

INSERT INTO providers
(providerId, name, longName)
VALUES
(null, 'AWS', 'Amazon Web Services'),
(null, 'Azure', 'Azure Cloud Services'),
(null, 'GCP', 'Google Cloud Platform');

INSERT INTO categories
(categoryId, name, description)
VALUES
(null, 'Containers', 'La contenedorización es una metodología que impulsa implementaciones de cargas de trabajo densas, eficientes y de alto rendimiento en entornos privados, públicos y multinube.'),
(null, 'Networking', 'Los servicios de redes en la nube se refieren al alojamiento de los recursos de red de una organización en una nube pública o privada, con gestión proporcionada internamente o por un proveedor de servicios.'),
(null, 'Database', 'Una base de datos en la nube es un servicio de base de datos que se crea y se accede a través de una plataforma de computación en la nube. Permite almacenar, gestionar y recuperar datos de forma flexible, escalable y segura a través de Internet');

INSERT INTO subCategories
(subCategoryId, name, category)
VALUES
(null, 'Manejadores de contenedores', 1),
(null, 'Content Delivery Network (CDN)', 2),
(null, 'DNS', 2),
(null, 'Load balancing', 2),
(null, 'SQL', 3),
(null, 'NoSQL (Not only SQL): Document', 3),
(null, 'NoSQL (Not only SQL): Key-value', 3),
(null, 'NoSQL (Not only SQL): Graph', 3);

INSERT INTO services
(serviceId, name, link, subCategory, provider, description)
VALUES
(null, 'Elastic Kubernetes Service (EKS)','https://aws.amazon.com/es/eks/', 1, 1, 'Amazon Elastic Kubernetes Service (Amazon EKS) es un servicio administrado por Kubernetes que sirve para ejecutar Kubernetes en la nube de AWS y en centros de datos locales. En la nube, Amazon EKS administra de forma automática la disponibilidad y la escalabilidad de los nodos del plano de control de Kubernetes responsables de programar contenedores, administrar la disponibilidad de las aplicaciones, almacenar datos de clústeres y otras tareas clave'),
(null, 'Azure Kubernetes Service (AKS)', 'https://azure.microsoft.com/es-mx/products/kubernetes-service/', 1, 2, 'Azure Kubernetes Service (AKS) ofrece la forma más rápida de empezar a desarrollar e implementar aplicaciones nativas de nube en Azure, centros de datos o en el perímetro con canalizaciones integradas de código a nube y límites de protección. Obtenga administración y gobernanza unificadas para clústeres de Kubernetes locales, perimetrales y de nube múltiple.'),
(null, 'Google Kubernetes Engine (GKE)', 'https://cloud.google.com/kubernetes-engine', 1, 3, 'Un clúster de GKE tiene un plano de control y máquinas llamadas nodos. Los nodos ejecutan los servicios que admiten los contenedores que conforman tus cargas de trabajo.'),
(null, 'Amazon CloudFront', 'https://aws.amazon.com/es/cloudfront/', 2, 1, 'Amazon CloudFront es un servicio de red de entrega de contenido (CDN) creado para ofrecer un alto rendimiento, seguridad y comodidad para los desarrolladores.'),
(null, 'Azure Content Delivery Network', 'https://azure.microsoft.com/en-us/products/cdn/', 2, 2, 'Azure Content Delivery Network ofrece una solución global para entregar contenido rápidamente. Ahorra ancho de banda y mejora la capacidad de respuesta al codificar o distribuir software de juegos, actualizaciones de firmware y puntos finales de IoT. Reduce los tiempos de carga de sitios web, aplicaciones móviles y medios de transmisión para aumentar la satisfacción de los usuarios a nivel mundial.'),
(null, 'Cloud CDN y Media CDN', 'https://cloud.google.com/cdn/', 2, 3, 'Las redes de distribución de contenidos de Google (Cloud CDN y Media CDN) escalan para acercar el contenido a un público global.'),
(null, 'Amazon Route 53', 'https://aws.amazon.com/es/route53/', 3, 1, 'Amazon Route 53 es un servicio web de sistema de nombres de dominio (DNS) escalable y de alta disponibilidad. Route 53 conecta las solicitudes de los usuarios con las aplicaciones de Internet que se ejecutan en AWS o en las instalaciones.'),
(null, 'Azure DNS', 'https://azure.microsoft.com/es-es/products/dns', 3, 2, 'Administre los registros DNS con las mismas credenciales, así como el contrato de facturación y soporte técnico, que los demás servicios de Azure.'),
(null, 'Cloud DNS', 'https://cloud.google.com/dns', 3, 3, 'Servicio de DNS confiable, resistente y con baja latencia de la red mundial de Google, con todo lo que necesitas para registrar, administrar y entregar tus dominios. Los clientes nuevos obtienen $300 en créditos gratuitos que pueden utilizar en Cloud DNS.'),
(null, 'Elastic Load Balancing (ELB)', 'https://aws.amazon.com/es/elasticloadbalancing/', 4, 1, 'Elastic Load Balancing (ELB) distribuye automáticamente el tráfico de aplicaciones entrantes entre varios destinos y dispositivos virtuales en una o varias zonas de disponibilidad conocidas como Availability zones (AZ).'),
(null, 'Application Gateway', 'https://azure.microsoft.com/en-us/products/application-gateway/', 4, 2, 'servicios de equilibrio de carga y enrutamiento a nivel de aplicación para construir un front end web escalable y de alta disponibilidad en Azure. El escalado automático ofrece elasticidad al escalar automáticamente las instancias de Application Gateway según la carga de tráfico de tu aplicación web.'),
(null, 'Cloud Load Balancing', 'https://cloud.google.com/load-balancing', 4, 3, 'Balanceo de cargas escalable y de alto rendimiento en Google Cloud.'),
(null, 'Amazon Relational Database Service', 'https://aws.amazon.com/es/rds/', 5, 1, 'Amazon Relational Database Service (Amazon RDS) es una colección de servicios administrados que facilita las tareas de configuración, operación y escalado de una base de datos en la nube.'),
(null, 'Aurora', 'https://aws.amazon.com/es/rds/aurora/', 5, 1, 'Alto rendimiento inigualable y disponibilidad a escala global, con compatibilidad total con MySQL y PostgreSQL'),
(null, 'Azure SQL Database', 'https://azure.microsoft.com/en-us/products/azure-sql/database/', 5, 2, 'Construye aplicaciones ilimitadas, confiables y preparadas en una base de datos SQL totalmente administrada.'),
(null, 'Spanner', 'https://cloud.google.com/spanner/', 5, 3, 'Ya no es relacional ni relacional. Obtén un rendimiento y una disponibilidad altos a una escala prácticamente ilimitada. Elimina el estrés de administrar bases de datos con el mantenimiento de la inscripción automática.');


-- subcategorías por categoría, filtrado por categoría
select
    T1.name,
    subCategoryId,
    categoryId,
    T2.name as 'categoryName'
from subCategories T1
    left join categories T2 on T1.category = T2.categoryId
where category = 1;

-- servicios y nombres de proveedores filtrado por subcategoría
select
    T1.name,
    link,
    subCategory,
    description,
    providerId,
    T2.name as 'ProviderName',
    T2.longName as 'ProviderLongName'
from services T1
    left join providers T2 on T1.provider = T2.providerId
where subCategory = 1
order by T1.provider;
