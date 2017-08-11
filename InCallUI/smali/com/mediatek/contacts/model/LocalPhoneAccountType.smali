.class public Lcom/mediatek/contacts/model/LocalPhoneAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "LocalPhoneAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 54
    const-string/jumbo v4, "LocalPhoneAccountType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[LocalPhoneAccountType]resPackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v4, "Local Phone Account"

    iput-object v4, p0, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->accountType:Ljava/lang/String;

    .line 56
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->resourcePackageName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 58
    const v4, 0x7f0b00e3

    iput v4, p0, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->titleRes:I

    .line 59
    const v4, 0x7f0200da

    iput v4, p0, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->iconRes:I

    .line 60
    new-instance v3, Landroid/telephony/TelephonyManager;

    invoke-direct {v3, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 63
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 64
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 65
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 67
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 68
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 69
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 70
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 71
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 73
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 74
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 75
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 76
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 78
    sget-boolean v4, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_VOLTE_SUPPORT:Z

    if-eqz v4, :cond_0

    .line 79
    sget-boolean v4, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_IMS_SUPPORT:Z

    .line 78
    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindImsCall(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 82
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    .line 83
    .local v1, "isVoiceCapable":Z
    invoke-static {p1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    .line 84
    .local v2, "isVoipSupported":Z
    const-string/jumbo v4, "LocalPhoneAccountType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[LocalPhoneAccountType]isVoiceCapable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    const-string/jumbo v6, ",isVoipSupported = "

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "isVoiceCapable":Z
    .end local v2    # "isVoipSupported":Z
    :cond_1
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    const-string/jumbo v4, "LocalPhoneAccountType"

    const-string/jumbo v5, "[LocalPhoneAccountType]DefinitionException:"

    invoke-static {v4, v5, v0}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
