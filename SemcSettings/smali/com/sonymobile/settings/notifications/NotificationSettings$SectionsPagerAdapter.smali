.class public Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/notifications/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/notifications/NotificationSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/notifications/NotificationSettings;Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationSettings;

    .line 76
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 77
    # getter for: Lcom/sonymobile/settings/notifications/NotificationSettings;->fragments:Ljava/util/List;
    invoke-static {p1}, Lcom/sonymobile/settings/notifications/NotificationSettings;->access$000(Lcom/sonymobile/settings/notifications/NotificationSettings;)Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/sonymobile/settings/notifications/MostRecentNotifications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    # getter for: Lcom/sonymobile/settings/notifications/NotificationSettings;->fragments:Ljava/util/List;
    invoke-static {p1}, Lcom/sonymobile/settings/notifications/NotificationSettings;->access$000(Lcom/sonymobile/settings/notifications/NotificationSettings;)Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/sonymobile/settings/notifications/DownloadedNotifications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    # getter for: Lcom/sonymobile/settings/notifications/NotificationSettings;->fragments:Ljava/util/List;
    invoke-static {p1}, Lcom/sonymobile/settings/notifications/NotificationSettings;->access$000(Lcom/sonymobile/settings/notifications/NotificationSettings;)Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/sonymobile/settings/notifications/AllNotifications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationSettings;

    # getter for: Lcom/sonymobile/settings/notifications/NotificationSettings;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/sonymobile/settings/notifications/NotificationSettings;->access$000(Lcom/sonymobile/settings/notifications/NotificationSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationSettings;

    invoke-virtual {v0}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationSettings;

    # getter for: Lcom/sonymobile/settings/notifications/NotificationSettings;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/sonymobile/settings/notifications/NotificationSettings;->access$000(Lcom/sonymobile/settings/notifications/NotificationSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 95
    .local v0, "l":Ljava/util/Locale;
    packed-switch p1, :pswitch_data_0

    .line 103
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 97
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationSettings;

    const v2, 0x7f040016

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationSettings;

    const v2, 0x7f040017

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/settings/notifications/NotificationSettings$SectionsPagerAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationSettings;

    const v2, 0x7f040018

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/notifications/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
