.class Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter$1;
.super Ljava/lang/Object;
.source "NotificationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/sonymobile/settings/notifications/NotificationListFragment$Row;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

.field final synthetic val$row:Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter$1;->this$1:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    iput-object p2, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter$1;->val$row:Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter$1;->this$1:Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;

    iget-object v0, v0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter;->this$0:Lcom/sonymobile/settings/notifications/NotificationListFragment;

    invoke-virtual {v0}, Lcom/sonymobile/settings/notifications/NotificationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "app_package"

    iget-object v3, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter$1;->val$row:Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    iget-object v3, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "app_uid"

    iget-object v3, p0, Lcom/sonymobile/settings/notifications/NotificationListFragment$NotificationAppAdapter$1;->val$row:Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;

    iget v3, v3, Lcom/sonymobile/settings/notifications/NotificationListFragment$AppRow;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "has_settings_intent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method
