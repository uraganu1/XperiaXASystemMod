.class Lcom/android/mms/ui/ClassZeroActivity$2;
.super Landroid/os/Handler;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x104000a

    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ClassZeroActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get4(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get3(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get6(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 110
    const v3, 0x7f0b00a0

    .line 106
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get5(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 106
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->-set0(Lcom/android/mms/ui/ClassZeroActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get3(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get5(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->-set0(Lcom/android/mms/ui/ClassZeroActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->-get7(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/mms/ui/ClassZeroActivity$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->-get7(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity$2;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->-wrap0(Lcom/android/mms/ui/ClassZeroActivity;)V

    goto/16 :goto_0

    .line 133
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get3(Lcom/android/mms/ui/ClassZeroActivity;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ClassZeroActivity;->-get5(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->-set0(Lcom/android/mms/ui/ClassZeroActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
