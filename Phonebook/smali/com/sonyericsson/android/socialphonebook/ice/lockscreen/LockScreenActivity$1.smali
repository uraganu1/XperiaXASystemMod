.class Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->onCallPhoneNumber(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;

.field final synthetic val$adapter:Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$japanDialingIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;Landroid/app/AlertDialog;Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;
    .param p2, "val$dialog"    # Landroid/app/AlertDialog;
    .param p3, "val$adapter"    # Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;
    .param p4, "val$japanDialingIntent"    # Landroid/content/Intent;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->val$adapter:Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;

    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->val$japanDialingIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;Z)Z

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->val$adapter:Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;

    invoke-virtual {v0, p3}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "selectedPhoneNumber":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->val$japanDialingIntent:Landroid/content/Intent;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;

    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;

    const v3, 0x7f0901db

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity$1;->val$japanDialingIntent:Landroid/content/Intent;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    return-void
.end method
