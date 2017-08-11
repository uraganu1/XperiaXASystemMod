.class Lcom/android/incallui/DialpadFragment$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field final synthetic this$0:Lcom/android/incallui/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/DialpadFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/DialpadFragment;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    .line 136
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    .line 307
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->DTMF_CHARACTERS:[C

    .line 135
    return-void

    .line 307
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x23s
        0x2as
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/incallui/DialpadFragment;Lcom/android/incallui/DialpadFragment$DTMFKeyListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/DialpadFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/DialpadFragment;)V

    return-void
.end method

.method private lookup(Landroid/view/KeyEvent;)C
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 286
    .local v1, "meta":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v2

    .line 288
    .local v2, "number":I
    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    .line 290
    .local v0, "match":I
    if-eqz v0, :cond_1

    move v2, v0

    .line 293
    .end local v0    # "match":I
    :cond_1
    int-to-char v3, v2

    return v3
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 230
    .local v0, "c":C
    sget-boolean v1, Lcom/android/incallui/DialpadFragment;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DTMFKeyListener.onKeyDown: event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    sget-boolean v1, Lcom/android/incallui/DialpadFragment;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DTMFKeyListener reading \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' from input."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    .line 239
    const/4 v1, 0x1

    return v1

    .line 241
    :cond_2
    sget-boolean v1, Lcom/android/incallui/DialpadFragment;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DTMFKeyListener rejecting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' from input."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    :cond_3
    return v3
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-virtual {p0, p4, p2}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 183
    .local v0, "c":C
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 189
    .local v1, "keyOK":Z
    if-eqz v1, :cond_2

    .line 190
    sget-boolean v2, Lcom/android/incallui/DialpadFragment;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DTMFKeyListener reading \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' from input."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v2, v0}, Lcom/android/incallui/DialpadPresenter;->startTone(C)V

    .line 195
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 193
    :cond_2
    sget-boolean v2, Lcom/android/incallui/DialpadFragment;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DTMFKeyListener rejecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' from input."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v1    # "keyOK":Z
    :cond_3
    return v3
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 255
    if-nez p1, :cond_0

    .line 260
    return v3

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 264
    .local v0, "c":C
    sget-boolean v1, Lcom/android/incallui/DialpadFragment;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DTMFKeyListener.onKeyUp: event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    sget-boolean v1, Lcom/android/incallui/DialpadFragment;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stopping the tone for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    .line 271
    return v3

    .line 274
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 212
    invoke-virtual {p0, p4, p2}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 214
    .local v0, "c":C
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 216
    .local v1, "keyOK":Z
    if-eqz v1, :cond_1

    .line 217
    sget-boolean v2, Lcom/android/incallui/DialpadFragment;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stopping the tone for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    .line 219
    const/4 v2, 0x1

    return v2

    .line 222
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
