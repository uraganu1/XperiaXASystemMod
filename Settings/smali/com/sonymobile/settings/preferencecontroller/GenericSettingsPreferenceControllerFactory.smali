.class public Lcom/sonymobile/settings/preferencecontroller/GenericSettingsPreferenceControllerFactory;
.super Ljava/lang/Object;
.source "GenericSettingsPreferenceControllerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/sonymobile/settings/preferencecontroller/PreferenceController;
    .locals 2
    .param p0, "xmlName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 17
    return-object v1

    .line 20
    :cond_0
    const-string/jumbo v0, "xperia_connectivity_settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Lcom/sonymobile/settings/preferencecontroller/XperiaConnectivityPreferenceController;

    invoke-direct {v0}, Lcom/sonymobile/settings/preferencecontroller/XperiaConnectivityPreferenceController;-><init>()V

    return-object v0

    .line 24
    :cond_1
    return-object v1
.end method
