.class Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;
.super Ljava/lang/Object;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/CancelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/CancelActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/CancelActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/CancelActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/CancelActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    const-class v3, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/common/vcard/CancelActivity;

    .line 59
    const/4 v3, 0x1

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/common/vcard/CancelActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 57
    return-void
.end method
