.class public Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
.super Landroid/widget/EditText;
.source "PhoneticNameTransliterator.java"


# static fields
.field private static final IME_ACTION_POBOX:Ljava/lang/String; = "com.sonymobile.pobox"

.field private static final IME_ACTION_POBOX_PRE_AS6:Ljava/lang/String; = "com.sonyericsson.android.pobox"

.field private static final POBOX_READING_KEY:Ljava/lang/String; = "yomi"

.field private static final TAG:Ljava/lang/String; = "PhoneticNameTransliterator"


# instance fields
.field private mTarget:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private actionIsPOBox(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string/jumbo v0, "com.sonyericsson.android.pobox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sonymobile.pobox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 58
    sget-boolean v1, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, "PhoneticNameTransliterator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrivateIMECommand act:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;->mTarget:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;->actionIsPOBox(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 62
    const-string/jumbo v1, "yomi"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "reading":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;->mTarget:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 67
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 69
    .end local v0    # "reading":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public setTarget(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/EditText;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;->mTarget:Landroid/widget/EditText;

    .line 46
    return-void
.end method
