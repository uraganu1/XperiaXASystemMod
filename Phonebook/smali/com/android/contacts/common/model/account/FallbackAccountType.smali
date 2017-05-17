.class public Lcom/android/contacts/common/model/account/FallbackAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "FallbackAccountType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FallbackAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->accountType:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->dataSet:Ljava/lang/String;

    .line 36
    const v1, 0x7f0900c4

    iput v1, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->titleRes:I

    .line 37
    const/high16 v1, 0x7f030000

    iput v1, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->iconRes:I

    .line 40
    iput-object p2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->resourcePackageName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    const-string/jumbo v1, "FallbackAccountType"

    const-string/jumbo v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static createWithPackageNameForTest(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resPackageName"    # Ljava/lang/String;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/android/contacts/common/model/account/FallbackAccountType;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method
