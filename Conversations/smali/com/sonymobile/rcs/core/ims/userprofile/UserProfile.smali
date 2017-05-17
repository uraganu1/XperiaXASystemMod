.class public Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"


# instance fields
.field private associatedUriList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private homeDomain:Ljava/lang/String;

.field private imConferenceUri:Ljava/lang/String;

.field private mPreferredUri:Ljava/lang/String;

.field private mPublicUri:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private privateID:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private xdmServerAddr:Ljava/lang/String;

.field private xdmServerLogin:Ljava/lang/String;

.field private xdmServerPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "homeDomain"    # Ljava/lang/String;
    .param p3, "privateID"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "xdmServerAddr"    # Ljava/lang/String;
    .param p7, "xdmServerLogin"    # Ljava/lang/String;
    .param p8, "xdmServerPassword"    # Ljava/lang/String;
    .param p9, "imConferenceUri"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->associatedUriList:Ljava/util/Vector;

    .line 122
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->username:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->homeDomain:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->privateID:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->password:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->realm:Ljava/lang/String;

    .line 127
    iput-object p6, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerAddr:Ljava/lang/String;

    .line 128
    iput-object p7, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerLogin:Ljava/lang/String;

    .line 129
    iput-object p8, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerPassword:Ljava/lang/String;

    .line 130
    iput-object p9, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->imConferenceUri:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPublicUri:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public getHomeDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->homeDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getImConferenceUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->imConferenceUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPreferredUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->privateID:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "addr":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "displayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    :goto_0
    return-object v0

    .line 200
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "number":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 205
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    return-object v0
.end method

.method public getPublicUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPreferredUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPreferredUri:Ljava/lang/String;

    return-object v0

    .line 168
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isTelUriFormatUsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->homeDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicUriForRegistration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPublicUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPublicUri:Ljava/lang/String;

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->homeDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getXdmServerAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getXdmServerLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getXdmServerPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setAssociatedUri(Ljava/util/ListIterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Ljavax2/sip/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "uris":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/Header;>;"
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .local v1, "sipUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 222
    .end local v1    # "sipUri":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 234
    if-nez v1, :cond_5

    .line 237
    :cond_1
    if-nez v2, :cond_6

    .line 240
    if-nez v1, :cond_7

    .line 244
    :goto_1
    return-void

    .line 217
    :cond_2
    return-void

    .line 223
    :cond_3
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 224
    .local v0, "header":Ljavax2/sip/header/ExtensionHeader;
    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->extractUriFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->associatedUriList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v4, "sip:"

    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "tel:"

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    move-object v2, v3

    .local v2, "telUri":Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v2    # "telUri":Ljava/lang/String;
    :cond_4
    move-object v1, v3

    .local v1, "sipUri":Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v0    # "header":Ljavax2/sip/header/ExtensionHeader;
    .end local v1    # "sipUri":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_1

    .line 235
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPublicUri:Ljava/lang/String;

    .line 236
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPreferredUri:Ljava/lang/String;

    goto :goto_1

    .line 238
    :cond_6
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPublicUri:Ljava/lang/String;

    .line 239
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPreferredUri:Ljava/lang/String;

    goto :goto_1

    .line 241
    :cond_7
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPublicUri:Ljava/lang/String;

    .line 242
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->mPreferredUri:Ljava/lang/String;

    goto :goto_1
.end method

.method public setHomeDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->homeDomain:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->username:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setXdmServerLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "login"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerLogin:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMS username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "IMS private ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->privateID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "IMS password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "IMS home domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->homeDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "XDM server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "XDM login="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "XDM password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->xdmServerPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "IM Conference URI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->imConferenceUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
