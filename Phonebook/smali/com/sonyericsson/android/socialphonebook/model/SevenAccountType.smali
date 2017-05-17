.class public Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "SevenAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE_PREFIX:Ljava/lang/String; = "com.seven.Z7"

.field private static final TAG:Ljava/lang/String; = "SevenAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->accountType:Ljava/lang/String;

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->resourcePackageName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 32
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 33
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 34
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 35
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 36
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 37
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/model/SevenAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    const-string/jumbo v1, "SevenAccountType"

    const-string/jumbo v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isSupportedAccount(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.seven.Z7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
