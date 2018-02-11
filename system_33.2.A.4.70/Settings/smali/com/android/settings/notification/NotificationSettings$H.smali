.class final Lcom/android/settings/notification/NotificationSettings$H;
.super Landroid/os/Handler;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$H;->this$0:Lcom/android/settings/notification/NotificationSettings;

    .line 681
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 680
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings$H;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 686
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 685
    :goto_0
    return-void

    .line 688
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$H;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->-get5(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 691
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$H;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->-get4(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 694
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$H;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->-get6(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 697
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$H;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->-wrap2(Lcom/android/settings/notification/NotificationSettings;)V

    goto :goto_0

    .line 700
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$H;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->-wrap5(Lcom/android/settings/notification/NotificationSettings;)V

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
