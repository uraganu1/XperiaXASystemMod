.class Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$2;
.super Ljava/lang/Object;
.source "MmsRingtonePreference.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->filterOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$2;->this$0:Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 1
    .param p1, "isGranted"    # Z

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$2;->this$0:Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->-wrap1(Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;)V

    .line 73
    :cond_0
    return-void
.end method
