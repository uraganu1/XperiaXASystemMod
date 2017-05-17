.class public Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "NameIdAccountType.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "Name ID"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.whitepages.nameid.account"

.field public static final PACKAGE_NAME_AUTHENTICATOR:Ljava/lang/String; = "com.whitepages.nameid.account"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authPackageName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 27
    const-string/jumbo v1, "com.whitepages.nameid.account"

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->accountType:Ljava/lang/String;

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->resourcePackageName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 32
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 33
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 34
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 35
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 36
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 37
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/NameIdAccountType;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public areContactsCopyable()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
