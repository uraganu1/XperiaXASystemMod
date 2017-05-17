.class Lcom/sonyericsson/conversations/notifications/BadgeController$1;
.super Ljava/lang/Object;
.source "BadgeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/notifications/BadgeController;->updateIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/notifications/BadgeController;

.field final synthetic val$contentValues:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/notifications/BadgeController;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/notifications/BadgeController;
    .param p2, "val$contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/BadgeController$1;->this$0:Lcom/sonyericsson/conversations/notifications/BadgeController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/BadgeController$1;->val$contentValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/BadgeController$1;->this$0:Lcom/sonyericsson/conversations/notifications/BadgeController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/notifications/BadgeController;->-get0(Lcom/sonyericsson/conversations/notifications/BadgeController;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/BadgeController$1;->this$0:Lcom/sonyericsson/conversations/notifications/BadgeController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/notifications/BadgeController;->-get0(Lcom/sonyericsson/conversations/notifications/BadgeController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 89
    sget-object v2, Lcom/sonymobile/home/resourceprovider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BadgeController$1;->val$contentValues:Landroid/content/ContentValues;

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/SecurityException;
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 93
    const-string/jumbo v1, "Failed to update badge icon"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
