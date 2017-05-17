.class Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;
.super Ljava/lang/Object;
.source "SimExportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private errorDialogShow(I)V
    .locals 3
    .param p1, "msgid"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const-string/jumbo v1, "mQueryfinished"

    const-string/jumbo v2, "errorDialogShow."

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    const v1, 0x7f0901fa

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$1;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;)V

    .line 170
    const v2, 0x7f090200

    .line 167
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1$2;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 124
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    const-string/jumbo v3, "mQueryfinished"

    const-string/jumbo v4, "run."

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-wrap3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "msgid":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get9(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 155
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    .line 123
    .end local v0    # "msgid":I
    :goto_0
    return-void

    .line 129
    .restart local v0    # "msgid":I
    :pswitch_0
    const v0, 0x7f0902ad

    .line 130
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->errorDialogShow(I)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)I

    move-result v3

    .line 134
    const v4, 0x7f0f0007

    .line 133
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 139
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    goto :goto_0

    .line 142
    .end local v1    # "str":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    .line 143
    const v3, 0x7f0902c6

    .line 142
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 145
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    goto :goto_0

    .line 149
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    .line 150
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    .line 151
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get7(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)I

    move-result v4

    .line 150
    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimCardMemoryFull(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 152
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    goto :goto_0

    .line 159
    .end local v0    # "msgid":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
