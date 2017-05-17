.class public Lcom/sonymobile/rcs/core/ims/userprofile/SettingsUserProfileInterface;
.super Lcom/sonymobile/rcs/core/ims/userprofile/UserProfileInterface;
.source "SettingsUserProfileInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfileInterface;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public read()Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;
    .locals 10

    .prologue
    .line 47
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsUserName()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "username":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsDomain()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "homeDomain":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsPrivateId()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "privateID":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsPassword()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "password":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsRealm()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "realm":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getXdmServer()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "xdmServer":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getXdmLogin()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "xdmLogin":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getXdmPassword()Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "xdmPassword":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getImConferenceUri()Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "imConfUri":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-direct/range {v0 .. v9}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
