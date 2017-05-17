.class public Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "AdnAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.sonyericsson.adncontacts"

.field public static final ADN1_URI:Landroid/net/Uri;

.field public static final ADN2_URI:Landroid/net/Uri;

.field public static final ADN_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->TAG:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "content://icc/adn/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->ADN_URI:Landroid/net/Uri;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->ADN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->ADN1_URI:Landroid/net/Uri;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->ADN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->ADN2_URI:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v0, "com.sonyericsson.adncontacts"

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 42
    const-string/jumbo v2, "com.sonyericsson.adncontacts"

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->accountType:Ljava/lang/String;

    .line 43
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->resourcePackageName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 49
    invoke-static {p3}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSlotNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getIccType(I)I

    move-result v1

    .line 50
    .local v1, "simType":I
    if-eq v1, v3, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 54
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "simType":I
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Problem building account type"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 95
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 96
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 98
    const-string/jumbo v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 100
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 103
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f090080

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 76
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const v1, 0x7f020065

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 77
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 78
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionAltHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 79
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 81
    const-string/jumbo v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 83
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 86
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f09007f

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v0
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0900b3

    const/4 v4, 0x1

    .line 62
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/name"

    .line 63
    const/4 v3, -0x1

    const v5, 0x7f0400dc

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 65
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 66
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data2"

    .line 67
    const/16 v5, 0x2061

    .line 66
    invoke-direct {v1, v3, v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setNeedFocus(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-object v6
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method
