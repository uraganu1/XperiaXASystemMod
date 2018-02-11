.class Lcom/sonymobile/settings/phone/DataRoamingSettings$2;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 146
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap2(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap10(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    .line 151
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap5(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)I

    goto :goto_0
.end method
