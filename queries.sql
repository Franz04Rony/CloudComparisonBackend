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


-- agregar más servicios
  INSERT INTO services
  (serviceId, name, link, subCategory, provider, description)
  VALUES
  (null,'DocumentDB', 'https://aws.amazon.com/es/documentdb/', 6, 1, "Amazon DocumentDB es un servicio de base de datos NoSQL propietario administrado que admite estructuras de datos de documentos y tiene compatibilidad limitada con las cargas de trabajo de MongoDB, con certeza compatibilidad con la versión 3.6 de MongoDB (publicada por MongoDB en 2017) y la versión 4.0 (publicada por MongoDB en 2018). Como base de datos de documentos, Amazon DocumentDB puede almacenar, consultar e indexar datos JSON."),
  (null, 'Azure Cosmos DB', 'https://azure.microsoft.com/en-us/products/cosmos-db', 6, 2, "Azure Cosmos DB es un servicio de base de datos multimodelo distribuido globalmente ofrecido por Microsoft. Está diseñado para proporcionar alta disponibilidad, escalabilidad y acceso de baja latencia a los datos para aplicaciones modernas. A diferencia de las bases de datos relacionales tradicionales, Cosmos DB es una base de datos NoSQL que puede manejar tipos de datos no estructurados, semi-estructurados y estructurados. Además, Apunta a un alto rendimiento (latencia de milisegundos de un solo dígito), distribución global (múltiples conmutaciones por error), rendimiento predictivo respaldado por SLA con indexación automática de cada atributo/propiedad y un modelo de precios enfocado en el rendimiento"),
  (null, 'Firebase Realtime Database', 'https://firebase.google.com/products/realtime-database?hl=es-419', 6, 3, 'Es la base de datos clásica de Firebase en JSON. Es adecuado para aplicaciones con modelos de datos simples que requieren búsquedas simples y sincronización de baja latencia con escalabilidad limitada.'),
  (null, 'Amazon DynamoDB', 'https://aws.amazon.com/es/dynamodb/', 7, 1, "Amazon DynamoDB es una base de datos NoSQL de clave-valor sin servidor y completamente administrada que está diseñada para ejecutar aplicaciones de alto rendimiento a cualquier escala. DynamoDB ofrece seguridad integrada, copias de seguridad continuas, replicación automatizada en varias regiones, almacenamiento de caché en memoria y herramientas de importación y exportación de datos."),
  (null, 'Table storage', 'https://azure.microsoft.com/en-us/products/storage/tables/', 7, 2, "Azure Table Storage es un servicio de base de datos que se enfoca en alta capacidad en una sola región (con una región secundaria opcional de solo lectura pero sin conmutación por error), indexación por PK/RK y precios optimizados para almacenamiento"),
  (null, 'Azure Cosmos DB', 'https://azure.microsoft.com/en-us/products/cosmos-db', 7, 2, "Azure Cosmos DB es un servicio de base de datos multimodelo distribuido globalmente ofrecido por Microsoft. Está diseñado para proporcionar alta disponibilidad, escalabilidad y acceso de baja latencia a los datos para aplicaciones modernas. A diferencia de las bases de datos relacionales tradicionales, Cosmos DB es una base de datos NoSQL que puede manejar tipos de datos no estructurados, semi-estructurados y estructurados. Además, Apunta a un alto rendimiento (latencia de milisegundos de un solo dígito), distribución global (múltiples conmutaciones por error), rendimiento predictivo respaldado por SLA con indexación automática de cada atributo/propiedad y un modelo de precios enfocado en el rendimiento"),
  (null, 'Cloud Bigtable', 'https://cloud.google.com/bigtable', 7, 3, "Servicio de base de datos NoSQL de nivel empresarial compatible con HBase con latencia de milisegundos de un solo dígito, escalamiento ilimitado y disponibilidad del 99.999% para grandes cargas de trabajo de análisis y operaciones."),
  (null, 'Firestore', 'https://cloud.google.com/firestore', 6, 3, "Es la base de datos de documentos de nivel empresarial recomendada y compatible con JSON, en la que confían más de 250,000 desarrolladores. Es adecuada para aplicaciones con modelos de datos enriquecidos que requieren capacidad de consulta, escalabilidad y alta disponibilidad. También ofrece sincronización de clientes de baja latencia y acceso a los datos sin conexión."),
  (null, 'Amazon Neptune', 'https://aws.amazon.com/es/neptune/', 8, 1, "Análisis de grafos de alto rendimiento y base de datos sin servidor para una escalabilidad y disponibilidad superiores. gratuita durante 750 horas por 30 días con el nivel gratuito de AWS en instancias t3.medium o t4g.medium.");

-- agregar una nueva categoría
  INSERT INTO categories
  (categoryId, name, description)
  VALUES
  (null, 'Computing', 'Los proveedores de nubes tienen servicios que permiten al usuario utilizar su hardware para realizar operaciones computacionales, almacenamiento, creación de una VM, etc.');

-- agregar subcategorías a computing
  INSERT INTO subCategories
  (subCategoryId, name, category)
  VALUES
  (null, 'Máquinas virtuales (VM)', 4),
  (null, 'Serverless computing', 4);

-- agregar más servicios
  INSERT INTO services
  (serviceId, name, link, subCategory, provider, description)
  VALUES
  (null, 'EC2','https://aws.amazon.com/es/ec2/', 9, 1, 'Amazon Elastic Compute Cloud (Amazon EC2) ofrece la plataforma de computación más amplia y completa, con más de 750 instancias y la posibilidad de elegir el procesador, almacenamiento, redes, sistema operativo y modelo de compra más reciente, en función de lo que mejor se ajuste a las necesidades que plantea su carga de trabajo.'),
  (null, 'Azure Virtual Machines', 'https://azure.microsoft.com/en-us/products/virtual-machines/', 9, 2, 'es un servicio de Azure que permite crear y administrar máquinas virtuales (VM) en la nube, con diversas opciones de sistemas operativos, rendimiento, escalabilidad, seguridad y ahorro de costos'),
  (null, 'Google Compute Engine', 'https://cloud.google.com/compute', 9, 3, 'GCE ofrece la opción de precios de spot más asequible con las máquinas virtuales de spot. Esto ofrece la misma potencia escalable que una instancia normal de Compute Engine, excepto con contratos de uso indulgente para trabajos por lotes a una fracción de los costos típicos. Cabe señalar que tanto Azure como EC2 tienen opciones similares, aunque no con el ahorro del 91 % que afirma GCE.'),
  (null, 'AWS Lambda', 'https://aws.amazon.com/es/lambda/', 10, 1, 'AWS Lambda es un servicio informático serverless y basado en eventos que le permite ejecutar código para prácticamente cualquier tipo de aplicación o servicio backend sin necesidad de aprovisionar servidores. Se despliega en servidores que ejecutan Amazon Linux. Las funciones de Lambda pueden interactuar con otros servicios en la nube de AWS o en otros lugares de numerosas maneras, como servicios de correo, etc.'),
  (null, 'Azure Functions', 'https://azure.microsoft.com/en-ca/products/functions/', 10, 2, 'Comparado con AWS Lambda y Google Cloud Functions, Azure Functions es más flexible y complejo en cuanto a cómo los usuarios implementan funciones sin servidor como parte de una carga de trabajo más grande, ya que puede ser corrido dentro del entorno de Azure Functions o dentro de contenedores Docker. También se puede especificar el OS, entre Windoes o alguna distribución de Linux.'),
  (null, 'Google Cloud Functions', 'https://cloud.google.com/functions', 10, 3, 'Servicio serverless que permite ejecutar código sin aprovisionamiento de servidores. Requiere que las funciones se almacenen en el Registro de Contenedores de Google utilizando imágenes de contenedores. Es decir, que a diferencia de Lambda o Azure Functions, en Google Cloud Functions las funciones deben ejecutarse como contenedores.');

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

