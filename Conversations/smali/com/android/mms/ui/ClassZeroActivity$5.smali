.class Lcom/android/mms/ui/ClassZeroActivity$5;
.super Ljava/lang/Thread;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/mms/ui/ClassZeroActivity;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get1(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v3, "address"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "messageAddress":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v2

    .line 194
    const/4 v3, 0x0

    .line 193
    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 196
    .local v0, "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get4(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ClassZeroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 197
    const v4, 0x7f0b0063

    .line 196
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get4(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get0(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "CLASS_ZERO_ADDRESS"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get2(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ClassZeroActivity;->-get2(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get2(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ClassZeroActivity;->-get2(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    return-void

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$5;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get4(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
