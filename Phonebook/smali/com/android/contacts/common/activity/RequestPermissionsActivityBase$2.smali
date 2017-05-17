.class Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$2;
.super Ljava/lang/Object;
.source "RequestPermissionsActivityBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->requestPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;

.field final synthetic val$unsatisfiedPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;

    .prologue
    .line 211
    .local p2, "val$unsatisfiedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$2;->this$0:Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;

    iput-object p2, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$2;->val$unsatisfiedPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$2;->this$0:Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;

    .line 215
    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$2;->val$unsatisfiedPermissions:Ljava/util/ArrayList;

    .line 216
    iget-object v2, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$2;->val$unsatisfiedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 217
    const/4 v2, 0x1

    .line 214
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->requestPermissions([Ljava/lang/String;I)V

    .line 218
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    return-void
.end method
