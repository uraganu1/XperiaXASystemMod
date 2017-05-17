.class Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$1;
.super Ljava/lang/Object;
.source "RequestPermissionsActivityBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$1;->this$0:Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$1;->this$0:Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;

    invoke-static {v0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->-wrap0(Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;)V

    .line 93
    return-void
.end method
