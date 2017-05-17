.class public abstract Lcom/android/contacts/common/model/account/BaseAccountType;
.super Lcom/android/contacts/common/model/account/AccountType;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/account/BaseAccountType$Tag;,
        Lcom/android/contacts/common/model/account/BaseAccountType$Attr;,
        Lcom/android/contacts/common/model/account/BaseAccountType$Weight;,
        Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$RelationActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PostalActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;,
        Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;
    }
.end annotation


# static fields
.field private static final AVAILABLE_IM_PROTOCOLS:[I

.field protected static final FLAGS_EMAIL:I = 0x21

.field protected static final FLAGS_EVENT:I = 0x1

.field protected static final FLAGS_GENERIC_NAME:I = 0x2001

.field protected static final FLAGS_NOTE:I = 0x24001

.field protected static final FLAGS_PERSON_NAME:I = 0x2061

.field protected static final FLAGS_PHONE:I = 0x3

.field protected static final FLAGS_PHONETIC:I = 0xc1

.field protected static final FLAGS_POSTAL:I = 0x22071

.field protected static final FLAGS_RELATION:I = 0x2061

.field protected static final FLAGS_SIP_ADDRESS:I = 0x21

.field protected static final FLAGS_WEBSITE:I = 0x11

.field protected static final MAX_LINES_FOR_GROUP:I = 0xa

.field protected static final MAX_LINES_FOR_NOTE:I = 0x64

.field protected static final MAX_LINES_FOR_POSTAL_ADDRESS:I = 0xa

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/model/account/BaseAccountType;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/contacts/common/model/account/BaseAccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/BaseAccountType;->TAG:Ljava/lang/String;

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/common/model/account/BaseAccountType;->AVAILABLE_IM_PROTOCOLS:[I

    .line 62
    return-void

    .line 99
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/AccountType;-><init>()V

    .line 155
    iput-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType;->accountType:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType;->dataSet:Ljava/lang/String;

    .line 157
    const v0, 0x7f0900c4

    iput v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType;->titleRes:I

    .line 158
    const/high16 v0, 0x7f030000

    iput v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType;->iconRes:I

    .line 154
    return-void
.end method

.method protected static buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 166
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I
    .param p1, "yearOptional"    # Z

    .prologue
    .line 182
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;->setYearOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected static buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 174
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildOrgType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Organization;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 162
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 170
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 186
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 829
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 821
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDefaultStructuredName()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 144
    const-string/jumbo v1, "data4"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "data5"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "data3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "data6"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "data9"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "data7"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 143
    return-object v0
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f090080

    const/4 v4, 0x1

    .line 324
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    .line 325
    const/16 v3, 0xf

    const v5, 0x7f0400dd

    .line 324
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 326
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 327
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 328
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 329
    const v0, 0x7f020052

    iput v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 330
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 331
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 336
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    const-string/jumbo v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    .line 335
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 339
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-object v6
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0900b7

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 505
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    .line 506
    const/16 v3, 0x96

    const v5, 0x7f040074

    .line 505
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 507
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 508
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 510
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 511
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 512
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getNoYearDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 513
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getFullDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 514
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v8, v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4, v7}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1, v7}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7, v7}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    .line 518
    const-string/jumbo v3, "data3"

    .line 517
    invoke-virtual {v1, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 521
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 524
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    return-object v6
.end method

.method protected addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 543
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    .line 544
    const v2, 0x7f090112

    const/16 v3, 0x3e7

    .line 543
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 546
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 547
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 548
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    return-object v6
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f090081

    const/4 v4, 0x1

    .line 407
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/im"

    const/16 v3, 0x14

    .line 408
    const v5, 0x7f0400dd

    .line 407
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v8

    .line 409
    .local v8, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 410
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 415
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 416
    iget-object v0, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v6

    .line 421
    .local v6, "configuration":Lcom/sonyericsson/android/socialphonebook/Configuration;
    const-string/jumbo v0, "data5"

    iput-object v0, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 422
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 425
    sget-object v1, Lcom/android/contacts/common/model/account/BaseAccountType;->AVAILABLE_IM_PROTOCOLS:[I

    const/4 v0, 0x0

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget v9, v1, v0

    .line 426
    .local v9, "protocolId":I
    invoke-static {v9}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v7

    .line 429
    .local v7, "imType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-virtual {v6, v8, v7}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isForbidden(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 430
    iget-object v5, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v7    # "imType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v9    # "protocolId":I
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v7

    .line 436
    .restart local v7    # "imType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-virtual {v6, v8, v7}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isForbidden(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 437
    iget-object v0, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {v7, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    const-string/jumbo v3, "data6"

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 441
    iget-object v0, v8, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    return-object v8
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0900b4

    const/4 v4, 0x1

    .line 269
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    .line 270
    const/16 v3, 0x73

    const v5, 0x7f0400dd

    .line 269
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 271
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 272
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 273
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 274
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 275
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 278
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    .line 279
    const/16 v4, 0x2061

    .line 278
    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-object v6
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f090077

    .line 478
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/note"

    .line 479
    const/16 v3, 0x6e

    const v5, 0x7f0400dd

    .line 478
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 480
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 481
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 482
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 483
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 484
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x24001

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    return-object v6
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2001

    const/4 v4, 0x1

    .line 447
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    .line 448
    const v2, 0x7f0900b5

    const/4 v3, 0x5

    .line 449
    const v5, 0x7f0400dd

    .line 447
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 450
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 451
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data2"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 453
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 454
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    const v3, 0x7f09007a

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data4"

    const v3, 0x7f09007b

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 460
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 461
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildOrgType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildOrgType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildOrgType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    .line 464
    const-string/jumbo v2, "data3"

    .line 463
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f09007f

    const/16 v3, 0xa

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 285
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    .line 286
    const v5, 0x7f0400dd

    .line 285
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 287
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const v0, 0x7f020065

    iput v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 288
    const v0, 0x7f09004c

    iput v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltDescriptionRes:I

    .line 289
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 290
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionAltHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 291
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 292
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 293
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 294
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 302
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    const-string/jumbo v5, "data3"

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 318
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    invoke-direct {v1, v3, v2, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    return-object v6
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 470
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 471
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 472
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 473
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data15"

    invoke-direct {v1, v3, v2, v2}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    return-object v6
.end method

.method protected addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f090078

    .line 529
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    .line 530
    const/16 v3, 0x82

    const v5, 0x7f0400dd

    .line 529
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 532
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 533
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 534
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 535
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 536
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    .line 537
    const/16 v4, 0x21

    .line 536
    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    return-object v6
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v10, 0x7f090109

    const/4 v9, 0x0

    const/16 v8, 0xc1

    const/16 v7, 0x2061

    const/4 v4, 0x1

    .line 190
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/name"

    .line 191
    const v2, 0x7f0900b3

    const/4 v3, -0x1

    const v5, 0x7f0400dc

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 192
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v1, 0x7f0900b3

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 193
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 194
    iput v4, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 196
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 197
    invoke-static {}, Lcom/android/contacts/util/LanguageUtil;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data4"

    const v3, 0x7f09010b

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data2"

    invoke-direct {v1, v2, v10, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setNeedFocus(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data5"

    const v3, 0x7f09010c

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data3"

    const v3, 0x7f09010a

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data6"

    const v3, 0x7f09010d

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data9"

    .line 259
    const v3, 0x7f090110

    .line 258
    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v9}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setEditable(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data7"

    .line 261
    const v3, 0x7f09010e

    .line 260
    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v9}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setEditable(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :goto_0
    return-object v6

    .line 203
    :pswitch_0
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data3"

    const v3, 0x7f09010a

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setNeedFocus(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data2"

    invoke-direct {v1, v2, v10, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data9"

    .line 208
    const v3, 0x7f090110

    .line 207
    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data7"

    .line 210
    const v3, 0x7f09010e

    .line 209
    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data3"

    const v3, 0x7f09010a

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setNeedFocus(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data5"

    const v3, 0x7f09010c

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data2"

    invoke-direct {v1, v2, v10, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data9"

    .line 224
    const v3, 0x7f090110

    .line 223
    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v9}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setEditable(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data8"

    .line 226
    const v3, 0x7f09010f

    .line 225
    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v9}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setEditable(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data7"

    .line 228
    const v3, 0x7f09010e

    .line 227
    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v9}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setEditable(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 233
    :pswitch_2
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data3"

    const v3, 0x7f09010a

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setNeedFocus(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data2"

    invoke-direct {v1, v2, v10, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data9"

    .line 238
    const v3, 0x7f090110

    .line 237
    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v9}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setEditable(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data7"

    .line 240
    const v3, 0x7f09010e

    .line 239
    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v9}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setEditable(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v10, 0x7f090103

    const v9, 0x7f090104

    const v8, 0x7f090102

    const/4 v4, 0x1

    const v7, 0x22071

    .line 345
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    .line 346
    const v2, 0x7f090082

    const/16 v3, 0x19

    const v5, 0x7f0400dd

    .line 345
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 347
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 348
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 349
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 350
    const v0, 0x7f02005e

    iput v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 351
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 352
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    .line 356
    const-string/jumbo v2, "data3"

    .line 355
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 360
    invoke-static {}, Lcom/android/contacts/util/LanguageUtil;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 386
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data4"

    invoke-direct {v1, v2, v8, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data5"

    invoke-direct {v1, v2, v10, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data6"

    invoke-direct {v1, v2, v9, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data7"

    const v3, 0x7f090105

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data8"

    const v3, 0x7f090106

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data9"

    .line 397
    const v3, 0x7f090107

    .line 396
    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data10"

    const v3, 0x7f090108

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :goto_0
    return-object v6

    .line 362
    :pswitch_0
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data10"

    const v3, 0x7f090108

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data9"

    const v3, 0x7f090107

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data8"

    const v3, 0x7f090106

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data7"

    const v3, 0x7f090105

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isStreetBeforeNeighborhoodEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data4"

    invoke-direct {v1, v2, v8, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data6"

    invoke-direct {v1, v2, v9, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :goto_1
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data5"

    invoke-direct {v1, v2, v10, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data6"

    invoke-direct {v1, v2, v9, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data4"

    invoke-direct {v1, v2, v8, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 360
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0900b6

    .line 490
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/website"

    .line 491
    const/16 v3, 0x78

    const/4 v4, 0x1

    const v5, 0x7f0400dd

    .line 490
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 492
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const v0, 0x7f020086

    iput v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 493
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 494
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 495
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 496
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 499
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const/16 v4, 0x11

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    return-object v6
.end method

.method public areContactsCopyable()Z
    .locals 1

    .prologue
    .line 1595
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method protected final parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 798
    .local v3, "outerDepth":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 799
    .local v5, "type":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 800
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 802
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 803
    .local v0, "depth":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    add-int/lit8 v6, v3, 0x1

    if-eq v0, v6, :cond_2

    .line 801
    :cond_1
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 807
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v6, "DataKind"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 810
    sget-object v6, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->INSTANCE:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->parseDataKindTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "kind$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 811
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    goto :goto_2

    .line 814
    .end local v1    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v2    # "kind$iterator":Ljava/util/Iterator;
    :cond_3
    sget-object v6, Lcom/android/contacts/common/model/account/BaseAccountType;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Skipping unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 794
    .end local v0    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_4
    return-void
.end method
