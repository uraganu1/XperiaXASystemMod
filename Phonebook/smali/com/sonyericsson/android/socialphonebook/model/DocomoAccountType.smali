.class public Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "DocomoAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.nttdocomo"

.field private static final TAG:Ljava/lang/String; = "DocomoAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 33
    const-string/jumbo v1, "com.android.nttdocomo"

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->accountType:Ljava/lang/String;

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->resourcePackageName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 38
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    const-string/jumbo v1, "DocomoAccountType"

    const-string/jumbo v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isDocomoAccountType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v0, "com.android.nttdocomo"

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

    .line 70
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 72
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string/jumbo v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 74
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/model/DocomoAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    .line 82
    const-string/jumbo v3, "data3"

    .line 81
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 85
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f09007f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method
