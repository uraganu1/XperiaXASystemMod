.class public Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "SonyAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.sonyericsson.localcontacts"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 40
    const-string/jumbo v1, "com.sonyericsson.localcontacts"

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->accountType:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->resourcePackageName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 45
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 55
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isSonyAccountType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string/jumbo v0, "com.sonyericsson.localcontacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 77
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 79
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string/jumbo v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 81
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/SonyAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    .line 90
    const-string/jumbo v3, "data3"

    .line 89
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 93
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f09007f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method
