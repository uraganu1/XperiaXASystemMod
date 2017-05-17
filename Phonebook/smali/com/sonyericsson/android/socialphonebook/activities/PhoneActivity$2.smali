.class Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$2;
.super Ljava/lang/Object;
.source "PhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    .line 203
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    .line 204
    const-class v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    .line 202
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string/jumbo v1, "phonenumber_required"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string/jumbo v1, "focus_search_field"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    return-void
.end method
