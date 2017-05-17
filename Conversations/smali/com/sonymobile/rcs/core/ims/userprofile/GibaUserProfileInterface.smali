.class public Lcom/sonymobile/rcs/core/ims/userprofile/GibaUserProfileInterface;
.super Lcom/sonymobile/rcs/core/ims/userprofile/UserProfileInterface;
.source "GibaUserProfileInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfileInterface;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public read()Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getXdmServer()Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "xdmServer":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsPassword()Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, "xdmPassword":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getImConferenceUri()Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, "confUri":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v9}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
