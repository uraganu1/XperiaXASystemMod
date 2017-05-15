.class public Lcom/sonymobile/settings/phone/DataRoamingSettingsActivity;
.super Lcom/android/settings/SubSettings;
.source "DataRoamingSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettingsActivity;->finish()V

    .line 15
    const/4 v0, 0x1

    return v0
.end method
