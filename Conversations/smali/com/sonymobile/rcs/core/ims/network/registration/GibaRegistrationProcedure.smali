.class public Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;
.super Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;
.source "GibaRegistrationProcedure.java"


# instance fields
.field private imsi:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationProcedure;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->imsi:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->mnc:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->mcc:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 75
    return-void
.end method


# virtual methods
.method public getHomeDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ims.mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->getHomeDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 81
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 83
    .local v1, "mgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getSubscriberID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->imsi:Ljava/lang/String;

    .line 84
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .local v0, "mcc_mnc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->mcc:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->mnc:Ljava/lang/String;

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->mnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->mnc:Ljava/lang/String;

    goto :goto_0
.end method

.method public readSecurityHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v6, "P-Associated-URI"

    .line 129
    invoke-virtual {p1, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "list":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    const/4 v4, 0x0

    .line 131
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 140
    if-eqz v4, :cond_2

    .line 145
    sget-object v6, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-interface {v4}, Ljavax2/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->setUsername(Ljava/lang/String;)V

    .line 146
    sget-object v6, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-interface {v4}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->setHomeDomain(Ljava/lang/String;)V

    .line 147
    sget-object v6, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljavax2/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->setXdmServerLogin(Ljava/lang/String;)V

    .line 155
    return-void

    .line 132
    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 133
    .local v0, "associatedHeader":Ljavax2/sip/header/ExtensionHeader;
    sget-object v6, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->ADDR_FACTORY:Ljavax2/sip/address/AddressFactory;

    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavax2/sip/address/AddressFactory;->createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;

    move-result-object v3

    .line 134
    .local v3, "sipAddr":Ljavax2/sip/address/Address;
    invoke-interface {v3}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v5

    .line 135
    .local v5, "uri":Ljavax2/sip/address/URI;
    instance-of v6, v5, Ljavax2/sip/address/SipURI;

    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v3}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v4

    check-cast v4, Ljavax2/sip/address/SipURI;

    .local v4, "sipUri":Ljavax2/sip/address/SipURI;
    goto :goto_0

    .line 141
    .end local v0    # "associatedHeader":Ljavax2/sip/header/ExtensionHeader;
    .end local v3    # "sipAddr":Ljavax2/sip/address/Address;
    .end local v4    # "sipUri":Ljavax2/sip/address/SipURI;
    .end local v5    # "uri":Ljavax2/sip/address/URI;
    :cond_2
    new-instance v6, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v7, "No SIP-URI found in the P-Associated-URI header"

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v2    # "list":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 153
    :goto_1
    new-instance v6, Lcom/sonymobile/rcs/core/CoreException;

    const-string/jumbo v7, "Bad P-Associated-URI header"

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 151
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/network/registration/GibaRegistrationProcedure;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Can\'t read a SIP-URI from the P-Associated-URI header"

    invoke-virtual {v6, v7, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public writeSecurityHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 118
    return-void
.end method
