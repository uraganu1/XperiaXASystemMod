.class Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;
.super Ljava/lang/Object;
.source "JoynContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->setupCheckbox(Landroid/view/View;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

.field final synthetic val$contact:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;
    .param p2, "val$contact"    # Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    iput-object p2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->val$contact:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->val$contact:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->isPreselected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->-get1(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->val$contact:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->-get0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->-set0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;I)I

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->-get1(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->val$contact:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->-wrap0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)V

    .line 144
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->notifyDataSetChanged()V

    .line 125
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->isMaxRecipients()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->-get0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->-set0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;I)I

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->-get1(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->val$contact:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->-wrap0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->isMaxRecipients()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->showMaxRecipientsDialog()V

    .line 141
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$1;->val$contact:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;

    invoke-static {v1}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->-get0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .line 141
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/permission/ImPermissionApi;->tryToRequestUpdatedImPermissions(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    goto :goto_0
.end method
