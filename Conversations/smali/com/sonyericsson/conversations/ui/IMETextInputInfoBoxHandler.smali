.class public Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;
.super Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
.source "IMETextInputInfoBoxHandler.java"


# instance fields
.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p3, "textInput"    # Landroid/widget/TextView;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 25
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    .line 26
    const-string/jumbo v1, "input_method"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 23
    return-void
.end method


# virtual methods
.method protected forceRefreshInfoBoxes()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method protected updateTextInputInfoBoxes(Z)V
    .locals 6
    .param p1, "initialUpdate"    # Z

    .prologue
    .line 34
    const/4 p1, 0x1

    .line 36
    .local p1, "initialUpdate":Z
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->updateTextInputCommandArgs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "com.sonyericsson.android.textinput.SetInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v2, "primary_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string/jumbo v3, "primary_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v2, "com.sonyericsson.android.textinput.SetInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v2, "secondary_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string/jumbo v3, "secondary_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "options":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 56
    sget-boolean v2, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set private IME options: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 60
    .end local v0    # "options":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    const-string/jumbo v4, "com.sonyericsson.android.textinput.SetInfo"

    .line 61
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    .line 60
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    sget-boolean v2, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sent IME private command with args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 30
    :cond_1
    return-void
.end method
