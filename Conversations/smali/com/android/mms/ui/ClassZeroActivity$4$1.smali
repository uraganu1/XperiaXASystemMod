.class Lcom/android/mms/ui/ClassZeroActivity$4$1;
.super Ljava/lang/Thread;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassZeroActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ClassZeroActivity$4;

.field final synthetic val$currentZeroValues:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity$4;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/mms/ui/ClassZeroActivity$4;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$currentZeroValues"    # Landroid/content/ContentValues;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$4$1;->this$1:Lcom/android/mms/ui/ClassZeroActivity$4;

    iput-object p3, p0, Lcom/android/mms/ui/ClassZeroActivity$4$1;->val$currentZeroValues:Landroid/content/ContentValues;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$4$1;->this$1:Lcom/android/mms/ui/ClassZeroActivity$4;

    iget-object v1, v1, Lcom/android/mms/ui/ClassZeroActivity$4;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ClassZeroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity$4$1;->this$1:Lcom/android/mms/ui/ClassZeroActivity$4;

    iget-object v1, v1, Lcom/android/mms/ui/ClassZeroActivity$4;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ClassZeroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 276
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$4$1;->val$currentZeroValues:Landroid/content/ContentValues;

    .line 275
    invoke-static {v1, v0, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 273
    return-void
.end method
