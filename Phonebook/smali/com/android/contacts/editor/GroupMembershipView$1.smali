.class Lcom/android/contacts/editor/GroupMembershipView$1;
.super Ljava/lang/Object;
.source "GroupMembershipView.java"

# interfaces
.implements Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/GroupMembershipView;->createNewGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/GroupMembershipView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/GroupMembershipView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/GroupMembershipView;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCreated()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->-set0(Lcom/android/contacts/editor/GroupMembershipView;Z)Z

    .line 438
    return-void
.end method
