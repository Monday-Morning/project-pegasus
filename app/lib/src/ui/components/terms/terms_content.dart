class TermsCategorySchema {
  final String id;
  final String name;

  TermsCategorySchema({required this.id, required this.name});
}

final List<TermsCategorySchema> categories = [
  TermsCategorySchema(
    id: 'termsOfServices',
    name: 'Terms of Service',
  ),
  TermsCategorySchema(id: 'privacyPolicy', name: 'Privacy Policy'),
  TermsCategorySchema(id: 'disclaimer', name: 'Disclaimer')
];

class TermsAndPoliciesSchema {
  final String title;
  final List<String> paragraphs;

  TermsAndPoliciesSchema({required this.title, required this.paragraphs});
}

Map<String, List<TermsAndPoliciesSchema>> termsOfPolicy = {
  'termsOfServices': [
    TermsAndPoliciesSchema(
      title: 'Introduction',
      paragraphs: [
        'Welcome to Monday Morning (“Company”, “we”, “our”, “us”)!',
        'These Terms of Service (“Terms”, “Terms of Service”) govern your use of our website located at mondaymorning.nitrkl.ac.in (together or individually “Service”) operated by Monday Morning.',
        'Our Privacy Policy also governs your use of our Service and explains how we collect, safeguard and disclose information that results from your use of our web pages.',
        'Your agreement with us includes these Terms and our Privacy Policy (“Agreements”). You acknowledge that you have read and understood Agreements, and agree to be bound of them.',
        'If you do not agree with (or cannot comply with) Agreements, then you may not use the Service, but please let us know by emailing at tech.mondaymorning@gmail.com so we can try to find a solution. These Terms apply to all visitors, users and others who wish to access or use Service.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Communications',
      paragraphs: [
        'By using our Service, you agree to subscribe to newsletters, marketing or promotional materials and other information we may send. However, you may opt out of receiving any, or all, of these communications from us by following the unsubscribe link or by emailing at tech.mondaymorning@gmail.com.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Contests, Sweepstakes and Promotions',
      paragraphs: [
        'Any contests, sweepstakes or other promotions (collectively, “Promotions”) made available through Service may be governed by rules that are separate from these Terms of Service. If you participate in any Promotions, please review the applicable rules as well as our Privacy Policy. If the rules for a Promotion conflict with these Terms of Service, Promotion rules will apply.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Content',
      paragraphs: [
        'Our Service allows you to post, link, store, share and otherwise make available certain information, text, graphics, videos, or other material (“Content”). You are responsible for Content that you post on or through Service, including its legality, reliability, and appropriateness.',
        'By posting Content on or through Service, You represent and warrant that: (i) Content is yours (you own it) and/or you have the right to use it and the right to grant us the rights and licence as provided in these Terms, and (ii) that the posting of your Content on or through Service does not violate the privacy rights, publicity rights, copyrights, contract rights or any other rights of any person or entity. We reserve the right to terminate the account of anyone found to be infringing on a copyright.',
        'You retain any and all of your rights to any Content you submit, post or display on or through Service and you are responsible for protecting those rights. We take no responsibility and assume no liability for Content you or any third party posts on or through Service. However, by posting Content using Service you grant us the right and licence to use, modify, publicly perform, publicly display, reproduce, and distribute such Content on and through Service. You agree that this licence includes the right for us to make your Content available to other users of Service, who may also use your Content subject to these Terms.',
        'Monday Morning has the right but not the obligation to monitor and edit all Content provided by users.',
        'In addition, Content found on or through this Service are the property of Monday Morning or used with permission. You may not distribute, modify, transmit, reuse, download, repost, copy, or use said Content, whether in whole or in part, for commercial purposes or for personal gain, without express advance written permission from us.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Prohibited Uses',
      paragraphs: [
        'You may use Service only for lawful purposes and in accordance with Terms. You agree not to use Service:',
        '0.1. In any way that violates any applicable national or international law or regulation.',
        '0.2. For the purpose of exploiting, harming, or attempting to exploit or harm minors in any way by exposing them to inappropriate content or otherwise.',
        '0.3. To transmit, or procure the sending of, any advertising or promotional material, including any “junk mail”, “chain letter,” “spam,” or any other similar solicitation.',
        '0.4. To impersonate or attempt to impersonate Company, a Company employee, another user, or any other person or entity.',
        '0.5. In any way that infringes upon the rights of others, or in any way is illegal, threatening, fraudulent, or harmful, or in connection with any unlawful, illegal, fraudulent, or harmful purpose or activity.',
        '0.6. To engage in any other conduct that restricts or inhibits anyone’s use or enjoyment of Service, or which, as determined by us, may harm or offend Company or users of Service or expose them to liability.',
        'Additionally, you agree not to:',
        '0.1. Use Service in any manner that could disable, overburden, damage, or impair Service or interfere with any other party’s use of Service, including their ability to engage in real time activities through Service.',
        '0.2. Use any robot, spider, or other automatic device, process, or means to access Service for any purpose, including monitoring or copying any of the material on Service.',
        '0.3. Use any manual process to monitor or copy any of the material on Service or for any other unauthorised purpose without our prior written consent.',
        '0.4. Use any device, software, or routine that interferes with the proper working of Service.',
        '0.5. Introduce any viruses, trojan horses, worms, logic bombs, or other material which is malicious or technologically harmful.',
        '0.6. Attempt to gain unauthorised access to, interfere with, damage, or disrupt any parts of Service, the server on which Service is stored, or any server, computer, or database connected to Service.',
        '0.7. Attack Service via a denial-of-service attack or a distributed denial-of-service attack.',
        '0.8. Take any action that may damage or falsify Company rating.',
        '0.9. Otherwise attempt to interfere with the proper working of Service.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Analytics',
      paragraphs: [
        'We may use third-party Service Providers to monitor and analyse the use of our Service.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'No Use By Minors',
      paragraphs: [
        'Service is intended only for access and use by individuals at least eighteen (18) years old. By accessing or using Service, you warrant and represent that you are at least eighteen (18) years of age and with the full authority, right, and capacity to enter into this agreement and abide by all of the terms and conditions of Terms. If you are not at least eighteen (18) years old, you are prohibited from both the access and usage of Service.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Intellectual Property',
      paragraphs: [
        'Service and its original content (excluding Content provided by users), features and functionality are and will remain the exclusive property of Monday Morning and its licensors. Service is protected by copyright, trademark, and other laws of and foreign countries. Our trademarks may not be used in connection with any product or service without the prior written consent of Monday Morning.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Copyright Policy',
      paragraphs: [
        'We respect the intellectual property rights of others. It is our policy to respond to any claim that Content posted on Service infringes on the copyright or other intellectual property rights (“Infringement”) of any person or entity.',
        'If you are a copyright owner, or authorised on behalf of one, and you believe that the copyrighted work has been copied in a way that constitutes copyright infringement, please submit your claim via email to tech.mondaymorning@gmail.com, with the subject line: ',
        '“Copyright Infringement” and include in your claim a detailed description of the alleged Infringement as detailed below, under “DMCA Notice and Procedure for Copyright Infringement Claims”',
        'You may be held accountable for damages (including costs and attorneys’ fees) for misrepresentation or bad-faith claims on the infringement of any Content found on and/or through Service on your copyright.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'DMCA Notice and Procedure for Copyright Infringement Claims',
      paragraphs: [
        'You may submit a notification pursuant to the Digital Millennium Copyright Act (DMCA) by providing our Copyright Agent with the following information in writing (see 17 U.S.C 512(c)(3) for further detail):',
        '0.1. an electronic or physical signature of the person authorised to act on behalf of the owner of the copyright’s interest;',
        '0.2. a description of the copyrighted work that you claim has been infringed, including the URL (i.e., web page address) of the location where the copyrighted work exists or a copy of the copyrighted work;',
        '0.3. identification of the URL or other specific location on Service where the material that you claim is infringing is located;',
        '0.4. your address, telephone number, and email address;',
        '0.5. a statement by you that you have a good faith belief that the disputed use is not authorised by the copyright owner, its agent, or the law;',
        '0.6. a statement by you, made under penalty of perjury, that the above information in your notice is accurate and that you are the copyright owner or authorised to act on the copyright owner’s behalf.',
        'You can contact our Copyright Agent via email at tech.mondaymorning@gmail.com.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Error Reporting and Feedback',
      paragraphs: [
        'You may provide us either directly at tech.mondaymorning@gmail.com or via third party sites and tools with information and feedback concerning errors, suggestions for improvements, ideas, problems, complaints, and other matters related to our Service (“Feedback”). You acknowledge and agree that: (i) you shall not retain, acquire or assert any intellectual property right or other right, title or interest in or to the Feedback; (ii) Company may have development ideas similar to the Feedback; (iii) Feedback does not contain confidential information or proprietary information from you or any third party; and (iv) Company is not under any obligation of confidentiality with respect to the Feedback. In the event the transfer of the ownership to the Feedback is not possible due to applicable mandatory laws, you grant Company and its affiliates an exclusive, transferable, irrevocable, free-of-charge, sub-licensable, unlimited and perpetual right to use (including copy, modify, create derivative works, publish, distribute and commercialise) Feedback in any manner and for any purpose.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Links To Other Web Sites',
      paragraphs: [
        'Our Service may contain links to third party web sites or services that are not owned or controlled by Monday Morning.',
        'Monday Morning has no control over, and assumes no responsibility for the content, privacy policies, or practices of any third party web sites or services. We do not warrant the offerings of any of these entities/individuals or their websites.',
        'For example, the outlined Terms of Use have been created using PolicyMaker.io, a free web application for generating high-quality legal documents. PolicyMaker’s Terms and Conditions generator is an easy-to-use free tool for creating an excellent standard Terms of Service template for a website, blog, e-commerce store or app.',
        'YOU ACKNOWLEDGE AND AGREE THAT COMPANY SHALL NOT BE RESPONSIBLE OR LIABLE, DIRECTLY OR INDIRECTLY, FOR ANY DAMAGE OR LOSS CAUSED OR ALLEGED TO BE CAUSED BY OR IN CONNECTION WITH USE OF OR RELIANCE ON ANY SUCH CONTENT, GOODS OR SERVICES AVAILABLE ON OR THROUGH ANY SUCH THIRD PARTY WEB SITES OR SERVICES.',
        'WE STRONGLY ADVISE YOU TO READ THE TERMS OF SERVICE AND PRIVACY POLICIES OF ANY THIRD PARTY WEB SITES OR SERVICES THAT YOU VISIT.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Disclaimer Of Warranty',
      paragraphs: [
        'THESE SERVICES ARE PROVIDED BY COMPANY ON AN “AS IS” AND “AS AVAILABLE” BASIS. COMPANY MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, AS TO THE OPERATION OF THEIR SERVICES, OR THE INFORMATION, CONTENT OR MATERIALS INCLUDED THEREIN. YOU EXPRESSLY AGREE THAT YOUR USE OF THESE SERVICES, THEIR CONTENT, AND ANY SERVICES OR ITEMS OBTAINED FROM US IS AT YOUR SOLE RISK.',
        'NEITHER COMPANY NOR ANY PERSON ASSOCIATED WITH COMPANY MAKES ANY WARRANTY OR REPRESENTATION WITH RESPECT TO THE COMPLETENESS, SECURITY, RELIABILITY, QUALITY, ACCURACY, OR AVAILABILITY OF THE SERVICES. WITHOUT LIMITING THE FOREGOING, NEITHER COMPANY NOR ANYONE ASSOCIATED WITH COMPANY REPRESENTS OR WARRANTS THAT THE SERVICES, THEIR CONTENT, OR ANY SERVICES OR ITEMS OBTAINED THROUGH THE SERVICES WILL BE ACCURATE, RELIABLE, ERROR-FREE, OR UNINTERRUPTED, THAT DEFECTS WILL BE CORRECTED, THAT THE SERVICES OR THE SERVER THAT MAKES IT AVAILABLE ARE FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS OR THAT THE SERVICES OR ANY SERVICES OR ITEMS OBTAINED THROUGH THE SERVICES WILL OTHERWISE MEET YOUR NEEDS OR EXPECTATIONS.',
        'COMPANY HEREBY DISCLAIMS ALL WARRANTIES OF ANY KIND, WHETHER EXPRESS OR IMPLIED, STATUTORY, OR OTHERWISE, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, AND FITNESS FOR PARTICULAR PURPOSE.',
        'THE FOREGOING DOES NOT AFFECT ANY WARRANTIES WHICH CANNOT BE EXCLUDED OR LIMITED UNDER APPLICABLE LAW.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Limitation Of Liability',
      paragraphs: [
        'EXCEPT AS PROHIBITED BY LAW, YOU WILL HOLD US AND OUR OFFICERS, DIRECTORS, EMPLOYEES, AND AGENTS HARMLESS FOR ANY INDIRECT, PUNITIVE, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGE, HOWEVER IT ARISES (INCLUDING ATTORNEYS’ FEES AND ALL RELATED COSTS AND EXPENSES OF LITIGATION AND ARBITRATION, OR AT TRIAL OR ON APPEAL, IF ANY, WHETHER OR NOT LITIGATION OR ARBITRATION IS INSTITUTED), WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE, OR OTHER TORTIOUS ACTION, OR ARISING OUT OF OR IN CONNECTION WITH THIS AGREEMENT, INCLUDING WITHOUT LIMITATION ANY CLAIM FOR PERSONAL INJURY OR PROPERTY DAMAGE, ARISING FROM THIS AGREEMENT AND ANY VIOLATION BY YOU OF ANY FEDERAL, STATE, OR LOCAL LAWS, STATUTES, RULES, OR REGULATIONS, EVEN IF COMPANY HAS BEEN PREVIOUSLY ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. EXCEPT AS PROHIBITED BY LAW, IF THERE IS LIABILITY FOUND ON THE PART OF COMPANY, IT WILL BE LIMITED TO THE AMOUNT PAID FOR THE PRODUCTS AND/OR SERVICES, AND UNDER NO CIRCUMSTANCES WILL THERE BE CONSEQUENTIAL OR PUNITIVE DAMAGES. SOME STATES DO NOT ALLOW THE EXCLUSION OR LIMITATION OF PUNITIVE, INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO THE PRIOR LIMITATION OR EXCLUSION MAY NOT APPLY TO YOU.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Termination',
      paragraphs: [
        'We may terminate or suspend your account and bar access to Service immediately, without prior notice or liability, under our sole discretion, for any reason whatsoever and without limitation, including but not limited to a breach of Terms.',
        'If you wish to terminate your account, you may simply discontinue using Service.',
        'All provisions of Terms which by their nature should survive termination shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity and limitations of liability.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Governing Law',
      paragraphs: [
        'These Terms shall be governed and construed in accordance with the laws of India, which governing law applies to agreement without regard to its conflict of law provisions.',
        'Our failure to enforce any right or provision of these Terms will not be considered a waiver of those rights. If any provision of these Terms is held to be invalid or unenforceable by a court, the remaining provisions of these Terms will remain in effect. These Terms constitute the entire agreement between us regarding our Service and supersede and replace any prior agreements we might have had between us regarding Service.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Changes To Service',
      paragraphs: [
        'We reserve the right to withdraw or amend our Service, and any service or material we provide via Service, in our sole discretion without notice. We will not be liable if for any reason all or any part of Service is unavailable at any time or for any period. From time to time, we may restrict access to some parts of Service, or the entire Service, to users, including registered users.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Amendments To Terms',
      paragraphs: [
        'We may amend Terms at any time by posting the amended terms on this site. It is your responsibility to review these Terms periodically.',
        'Your continued use of the Platform following the posting of revised Terms means that you accept and agree to the changes. You are expected to check this page frequently so you are aware of any changes, as they are binding on you.',
        'By continuing to access or use our Service after any revisions become effective, you agree to be bound by the revised terms. If you do not agree to the new terms, you are no longer authorised to use Service.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Waiver And Severability',
      paragraphs: [
        'No waiver by Company of any term or condition set forth in Terms shall be deemed a further or continuing waiver of such term or condition or a waiver of any other term or condition, and any failure of Company to assert a right or provision under Terms shall not constitute a waiver of such right or provision.',
        'If any provision of Terms is held by a court or other tribunal of competent jurisdiction to be invalid, illegal or unenforceable for any reason, such provision shall be eliminated or limited to the minimum extent such that the remaining provisions of Terms will continue in full force and effect.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Acknowledgement',
      paragraphs: [
        'BY USING SERVICE OR OTHER SERVICES PROVIDED BY US, YOU ACKNOWLEDGE THAT YOU HAVE READ THESE TERMS OF SERVICE AND AGREE TO BE BOUND BY THEM.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Contact Us',
      paragraphs: [
        'Please send your feedback, comments, requests for technical support by email: tech.mondaymorning@gmail.com.'
      ],
    )
  ],
  'privacyPolicy': [
    TermsAndPoliciesSchema(
      title: 'Introduction',
      paragraphs: [
        'Welcome to Monday Morning.',
        'Monday Morning (“us”, “we”, or “our”) operates mondaymorning.nitrkl.ac.in (hereinafter referred to as “Service”).',
        'Our Privacy Policy governs your visit to mondaymorning.nitrkl.ac.in, and explains how we collect, safeguard and disclose information that results from your use of our Service.',
        'We use your data to provide and improve Service. By using Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, the terms used in this Privacy Policy have the same meanings as in our Terms of Service.',
        'Our Terms of Service (“Terms”) govern all use of our Service and together with the Privacy Policy constitutes your agreement with us (“agreement”).',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Definitions',
      paragraphs: [
        'SERVICE means the mondaymorning.nitrkl.ac.in website operated by Monday Morning.',
        'PERSONAL DATA means data about a living individual who can be identified from those data (or from those and other information either in our possession or likely to come into our possession).',
        'USAGE DATA is data collected automatically either generated by the use of Service or from Service infrastructure itself (for example, the duration of a page visit).',
        'COOKIES are small files stored on your device (computer or mobile device).',
        'DATA CONTROLLER means a natural or legal person who (either alone or jointly or in common with other persons) determines the purposes for which and the manner in which any personal data are, or are to be, processed. For the purpose of this Privacy Policy, we are a Data Controller of your data.',
        'DATA PROCESSORS (OR SERVICE PROVIDERS) means any natural or legal person who processes the data on behalf of the Data Controller. We may use the services of various Service Providers in order to process your data more effectively.',
        'DATA SUBJECT is any living individual who is the subject of Personal Data.',
        'THE USER is the individual using our Service. The User corresponds to the Data Subject, who is the subject of Personal Data.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Information Collection and Use',
      paragraphs: [
        'We collect several different types of information for various purposes to provide and improve our Service to you.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Types of Data Collected',
      paragraphs: [
        'Personal Data',
        'While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (“Personal Data”). Personally identifiable information may include, but is not limited to:',
        '0.1. Email address',
        '0.2. First name and last name',
        '0.3. Phone number',
        '0.4. Address, Country, State, Province, ZIP/Postal code, City',
        '0.5. Cookies and Usage Data',
        'We may use your Personal Data to contact you with newsletters, marketing or promotional materials and other information that may be of interest to you. You may opt out of receiving any, or all, of these communications from us by following the unsubscribe link.',
        '\n',
        'Usage Data',
        'We may also collect information that your browser sends whenever you visit our Service or when you access Service by or through any device (“Usage Data”).',
        'This Usage Data may include information such as your computer’s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.',
        'When you access Service with a device, this Usage Data may include information such as the type of device you use, your device unique ID, the IP address of your device, your device operating system, the type of Internet browser you use, unique device identifiers and other diagnostic data.',
        '\n',
        'Tracking Cookies Data',
        'We use cookies and similar tracking technologies to track the activity on our Service and we hold certain information.',
        'Cookies are files with a small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Other tracking technologies are also used such as beacons, tags and scripts to collect and track information and to improve and analyse our Service.',
        'You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.',
        'Examples of Cookies we use:',
        '0.1. Session Cookies: We use Session Cookies to operate our Service.',
        '0.2. Preference Cookies: We use Preference Cookies to remember your preferences and various settings.',
        '0.3. Security Cookies: We use Security Cookies for security purposes.',
        '0.4. Advertising Cookies: Advertising Cookies are used to serve you with advertisements that may be relevant to you and your interests.',
        '\n',
        'Other Data',
        'While using our Service, we may also collect the following information: sex, age, date of birth, place of birth, passport details, citizenship, registration at place of residence and actual address, telephone number (work, mobile), details of documents on education, qualification, professional training, employment agreements, NDA agreements, information on bonuses and compensation, information on marital status, family members, social security (or other taxpayer identification) number, office location and other data.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Use of Data',
      paragraphs: [
        'Monday Morning uses the collected data for various purposes:',
        '0.1. to provide and maintain our Service;',
        '0.2. to notify you about changes to our Service;',
        '0.3. to allow you to participate in interactive features of our Service when you choose to do so;',
        '0.4. to provide customer support;',
        '0.5. to gather analysis or valuable information so that we can improve our Service;',
        '0.6. to monitor the usage of our Service;',
        '0.7. to detect, prevent and address technical issues;',
        '0.8. to fulfil any other purpose for which you provide it;',
        '0.9. to carry out our obligations and enforce our rights arising from any contracts entered into between you and us, including for billing and collection;',
        '0.10. to provide you with notices about your account and/or subscription, including expiration and renewal notices, email-instructions, etc.;',
        '0.11. to provide you with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless you have opted not to receive such information;',
        '0.12. in any other way we may describe when you provide the information;',
        '0.13. for any other purpose with your consent.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Retention of Data',
      paragraphs: [
        'We will retain your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.',
        'We will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period, except when this data is used to strengthen the security or to improve the functionality of our Service, or we are legally obligated to retain this data for longer time periods.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Transfer of Data',
      paragraphs: [
        'Your information, including Personal Data, may be transferred to – and maintained on – computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ from those of your jurisdiction.',
        'If you are located outside India and choose to provide information to us, please note that we transfer the data, including Personal Data, to India and process it there.',
        'Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.',
        'Monday Morning will take all the steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organisation or a country unless there are adequate controls in place including the security of your data and other personal information.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Disclosure of Data',
      paragraphs: [
        'We may disclose personal information that we collect, or you provide:',
        '0.1. Disclosure for Law Enforcement.',
        'Under certain circumstances, we may be required to disclose your Personal Data if required to do so by law or in response to valid requests by public authorities.',
        '0.2. Business Transaction.',
        'If we or our subsidiaries are involved in a merger, acquisition or asset sale, your Personal Data may be transferred.',
        '0.3. Other cases. We may disclose your information also:',
        '0.3.1. to our subsidiaries and affiliates;',
        '0.3.2. to contractors, service providers, and other third parties we use to support our business;',
        '0.3.3. to fulfill the purpose for which you provide it;',
        '0.3.4. for the purpose of including your company’s logo on our website;',
        '0.3.5. for any other purpose disclosed by us when you provide the information;',
        '0.3.6. with your consent in any other cases;',
        '0.3.7. if we believe disclosure is necessary or appropriate to protect the rights, property, or safety of the Company, our customers, or others.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Security of Data',
      paragraphs: [
        'The security of your data is important to us but remember that no method of transmission over the Internet or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.'
      ],
    ),
    TermsAndPoliciesSchema(
      title:
          'Your Data Protection Rights Under General Data Protection Regulation (GDPR)',
      paragraphs: [
        'If you are a resident of the European Union (EU) and European Economic Area (EEA), you have certain data protection rights, covered by GDPR.',
        'We aim to take reasonable steps to allow you to correct, amend, delete, or limit the use of your Personal Data.',
        'If you wish to be informed what Personal Data we hold about you and if you want it to be removed from our systems, please email us at tech.mondaymorning@gmail.com.',
        'In certain circumstances, you have the following data protection rights:',
        '0.1. the right to access, update or to delete the information we have on you;',
        '0.2. the right of rectification. You have the right to have your information rectified if that information is inaccurate or incomplete;',
        '0.3. the right to object. You have the right to object to our processing of your Personal Data;',
        '0.4. the right of restriction. You have the right to request that we restrict the processing of your personal information;',
        '0.5. the right to data portability. You have the right to be provided with a copy of your Personal Data in a structured, machine-readable and commonly used format;',
        '0.6. the right to withdraw consent. You also have the right to withdraw your consent at any time where we rely on your consent to process your personal information;',
        'Please note that we may ask you to verify your identity before responding to such requests. Please note, we may not able to provide Service without some necessary data',
        'You have the right to complain to a Data Protection Authority about our collection and use of your Personal Data. For more information, please contact your local data protection authority in the European Economic Area (EEA).',
      ],
    ),
    TermsAndPoliciesSchema(
      title:
          'Your Data Protection Rights under the California Privacy Protection Act (CalOPPA)',
      paragraphs: [
        'CalOPPA is the first state law in the nation to require commercial websites and online services to post a privacy policy. The law’s reach stretches well beyond California to require a person or company in the United States (and conceivable the world) that operates websites collecting personally identifiable information from California consumers to post a conspicuous privacy policy on its website stating exactly the information being collected and those individuals with whom it is being shared, and to comply with this policy.',
        'According to CalOPPA we agree to the following:',
        '0.1. users can visit our site anonymously;',
        '0.2. our Privacy Policy link includes the word “Privacy”, and can easily be found on the home page of our website;',
        '0.3. users will be notified of any privacy policy changes on our Privacy Policy Page;',
        '0.4. users are able to change their personal information by emailing us at tech.mondaymorning@gmail.com.',
        'Our Policy on “Do Not Track” Signals:',
        'We honor Do Not Track signals and do not track, plant cookies, or use advertising when a Do Not Track browser mechanism is in place. Do Not Track is a preference you can set in your web browser to inform websites that you do not want to be tracked.',
        'You can enable or disable Do Not Track by visiting the Preferences or Settings page of your web browser.'
      ],
    ),
    TermsAndPoliciesSchema(
      title:
          'Your Data Protection Rights under the California Consumer Privacy Act (CCPA)',
      paragraphs: [
        'If you are a California resident, you are entitled to learn what data we collect about you, ask to delete your data and not to sell (share) it. To exercise your data protection rights, you can make certain requests and ask us:',
        '0.1. What personal information we have about you. If you make this request, we will return to you:',
        '0.0.1. The categories of personal information we have collected about you',
        '0.0.2. The categories of sources from which we collect your personal information.',
        '0.0.3. The business or commercial purpose for collecting or selling your personal information.',
        '0.0.4. The categories of third parties with whom we share personal information.',
        '0.0.5. The specific pieces of personal information we have collected about you.',
        '0.0.6. A list of categories of personal information that we have sold, along with the category of any other company we sold it to. If we have not sold your personal information, we will inform you of that fact.',
        '0.0.7. A list of categories of personal information that we have disclosed for a business purpose, along with the category of any other company we shared it with.',
        'Please note, you are entitled to ask us to provide you with this information up to two times in a rolling twelve-month period. When you make this request, the information provided may be limited to the personal information we collected about you in the previous 12 months',
        '0.2. To delete your personal information. If you make this request, we will delete the personal information we hold about you as of the date of your request from our records and direct any service providers to do the same. In some cases, deletion may be accomplished through de-identification of the information. If you choose to delete your personal information, you may not be able to use certain functions that require your personal information to operate.',
        '0.3. To stop selling your personal information. We don’t sell or rent your personal information to any third parties for any purpose. We do not sell your personal information for monetary consideration. However, under some circumstances, a transfer of personal information to a third party, or within our family of companies, without monetary consideration may be considered a “sale” under California law. You are the only owner of your Personal Data and can request disclosure or deletion at any time.',
        'If you submit a request to stop selling your personal information, we will stop making such transfers.',
        'Please note, if you ask us to delete or stop selling your data, it may impact your experience with us, and you may not be able to participate in certain programs or membership services which require the usage of your personal information to function. But in no circumstances, we will discriminate against you for exercising your rights.',
        'To exercise your California data protection rights described above, please send your request(s) by email: tech.mondaymorning@gmail.com.',
        'Your data protection rights, described above, are covered by the CCPA, short for the California Consumer Privacy Act. To find out more, visit the official California Legislative Information website. The CCPA took effect on 01/01/2020.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Service Providers',
      paragraphs: [
        'We may employ third party companies and individuals to facilitate our Service (“Service Providers”), provide Service on our behalf, perform Service-related services or assist us in analysing how our Service is used.',
        'These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Analytics',
      paragraphs: [
        'We may use third-party Service Providers to monitor and analyse the use of our Service.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'CI/CD tools',
      paragraphs: [
        'We may use third-party Service Providers to automate the development process of our Service.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Behavioural Remarketing',
      paragraphs: [
        'We may use remarketing services to advertise on third party websites to you after you visited our Service. We and our third-party vendors use cookies to inform, optimise and serve ads based on your past visits to our Service.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Links to Other Sites',
      paragraphs: [
        'Our Service may contain links to other sites that are not operated by us. If you click a third party link, you will be directed to that third party’s site. We strongly advise you to review the Privacy Policy of every site you visit.',
        'We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Children’s Privacy',
      paragraphs: [
        'Our Services are not intended for use by children under the age of 18 (“Child” or “Children”).',
        'We do not knowingly collect personally identifiable information from Children under 18. If you become aware that a Child has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from Children without verification of parental consent, we take steps to remove that information from our servers.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Changes to This Privacy Policy',
      paragraphs: [
        'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.',
        'We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update “effective date” at the top of this Privacy Policy.',
        'You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'Contact Us',
      paragraphs: [
        'If you have any questions about this Privacy Policy, please contact us by email: tech.mondaymorning@gmail.com.'
      ],
    )
  ],
  'disclaimer': [
    TermsAndPoliciesSchema(
      title: 'WEBSITE DISCLAIMER',
      paragraphs: [
        'The information provided by Monday Morning (“Company”, “we”, “our”, “us”) on mondaymorning.nitrkl.ac.in (the “Site”) is for general informational purposes only. All information on the Site is provided in good faith, however we make no representation or warranty of any kind, express or implied, regarding the accuracy, adequacy, validity, reliability, availability, or completeness of any information on the Site.',
        'UNDER NO CIRCUMSTANCE SHALL WE HAVE ANY LIABILITY TO YOU FOR ANY LOSS OR DAMAGE OF ANY KIND INCURRED AS A RESULT OF THE USE OF THE SITE OR RELIANCE ON ANY INFORMATION PROVIDED ON THE SITE. YOUR USE OF THE SITE AND YOUR RELIANCE ON ANY INFORMATION ON THE SITE IS SOLELY AT YOUR OWN RISK.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'EXTERNAL LINKS DISCLAIMER',
      paragraphs: [
        'The Site may contain (or you may be sent through the Site) links to other websites or content belonging to or originating from third parties or links to websites and features. Such external links are not investigated, monitored, or checked for accuracy, adequacy, validity, reliability, availability or completeness by us.',
        'WE DO NOT WARRANT, ENDORSE, GUARANTEE, OR ASSUME RESPONSIBILITY FOR THE ACCURACY OR RELIABILITY OF ANY INFORMATION OFFERED BY THIRD-PARTY WEBSITES LINKED THROUGH THE SITE OR ANY WEBSITE OR FEATURE LINKED IN ANY BANNER OR OTHER ADVERTISING. WE WILL NOT BE A PARTY TO OR IN ANY WAY BE RESPONSIBLE FOR MONITORING ANY TRANSACTION BETWEEN YOU AND THIRD-PARTY PROVIDERS OF PRODUCTS OR SERVICES.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'AFFILIATES DISCLAIMER',
      paragraphs: [
        'The Site may contain links to affiliate websites, and we may receive an affiliate commission for any purchases or actions made by you on the affiliate websites using such links.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'TESTIMONIALS DISCLAIMER',
      paragraphs: [
        'The Site may contain testimonials by users of our products and/or services. These testimonials reflect the real-life experiences and opinions of such users. However, the experiences are personal to those particular users, and may not necessarily be representative of all users of our products and/or services. We do not claim, and you should not assume that all users will have the same experiences.',
        'YOUR INDIVIDUAL RESULTS MAY VARY.',
        'The testimonials on the Site are submitted in various forms such as text, audio and/or video, and are reviewed by us before being posted. They appear on the Site verbatim as given by the users, except for the correction of grammar or typing errors. Some testimonials may have been shortened for the sake of brevity, where the full testimonial contained extraneous information not relevant to the general public.',
        'The views and opinions contained in the testimonials belong solely to the individual user and do not reflect our views and opinions.',
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'ERRORS AND OMISSIONS DISCLAIMER',
      paragraphs: [
        'While we have made every attempt to ensure that the information contained in this site has been obtained from reliable sources, Monday Morning is not responsible for any errors or omissions or for the results obtained from the use of this information. All information in this site is provided “as is”, with no guarantee of completeness, accuracy, timeliness or of the results obtained from the use of this information, and without warranty of any kind, express or implied, including, but not limited to warranties of performance, merchantability, and fitness for a particular purpose',
        'In no event will Monday Morning, its related partnerships or corporations, or the partners, agents or employees thereof be liable to you or anyone else for any decision made or action taken in reliance on the information in this Site or for any consequential, special or similar damages, even if advised of the possibility of such damages.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'GUEST CONTRIBUTORS DISCLAIMER',
      paragraphs: [
        'This Site may include content from guest contributors and any views or opinions expressed in such posts are personal and do not represent those of Monday Morning or any of its staff or affiliates unless explicitly stated.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'LOGOS AND TRADEMARKS DISCLAIMER',
      paragraphs: [
        'All logos and trademarks of third parties referenced on mondaymorning.nitrkl.ac.in are the trademarks and logos of their respective owners. Any inclusion of such trademarks or logos does not imply or constitute any approval, endorsement or sponsorship of Monday Morning by such owners.'
      ],
    ),
    TermsAndPoliciesSchema(
      title: 'CONTACT US',
      paragraphs: [
        'Should you have any feedback, comments, requests for technical support or other inquiries, please contact us by email: tech.mondaymorning@gmail.com.'
      ],
    )
  ]
};
