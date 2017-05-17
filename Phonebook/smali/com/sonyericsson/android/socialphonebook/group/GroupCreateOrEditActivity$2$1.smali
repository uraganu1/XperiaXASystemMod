.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2$1;
.super Ljava/lang/Object;
.source "GroupCreateOrEditActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2$1;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSelection(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "selection"    # Ljava/lang/StringBuilder;

    .prologue
    .line 707
    const-string/jumbo v0, "photo_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string/jumbo v0, " NOT NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    return-void
.end method
