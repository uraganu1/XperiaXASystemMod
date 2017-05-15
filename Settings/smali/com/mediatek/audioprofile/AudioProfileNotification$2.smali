.class Lcom/mediatek/audioprofile/AudioProfileNotification$2;
.super Ljava/lang/Object;
.source "AudioProfileNotification.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/AudioProfileNotification;->initLockscreenNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileNotification;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 139
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    .local v2, "val":I
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileNotification;->-get0(Lcom/mediatek/audioprofile/AudioProfileNotification;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 141
    return v4

    .line 143
    :cond_0
    const v3, 0x7f0b0a85

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 144
    .local v0, "enabled":Z
    :goto_0
    const v3, 0x7f0b0a83

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 145
    .local v1, "show":Z
    :goto_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileNotification;->-wrap0(Lcom/mediatek/audioprofile/AudioProfileNotification;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 146
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_4

    move v3, v4

    .line 145
    :goto_2
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileNotification;->-wrap0(Lcom/mediatek/audioprofile/AudioProfileNotification;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 148
    const-string/jumbo v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v5, v4

    .line 147
    :cond_1
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileNotification$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileNotification;

    invoke-static {v3, v2}, Lcom/mediatek/audioprofile/AudioProfileNotification;->-set0(Lcom/mediatek/audioprofile/AudioProfileNotification;I)I

    .line 150
    return v4

    .line 143
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 144
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    :cond_4
    move v3, v5

    .line 146
    goto :goto_2
.end method
