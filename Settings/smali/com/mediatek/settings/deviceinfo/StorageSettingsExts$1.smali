.class Lcom/mediatek/settings/deviceinfo/StorageSettingsExts$1;
.super Ljava/lang/Object;
.source "StorageSettingsExts.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts$1;->this$0:Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 116
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts$1;->this$0:Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;

    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->-get0(Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts$1;->this$0:Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;

    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->-get0(Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/storage/StorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set default path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts$1;->this$0:Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;

    check-cast p1, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-static {v0, p1}, Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;->-set0(Lcom/mediatek/settings/deviceinfo/StorageSettingsExts;Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_1
    return v1
.end method
