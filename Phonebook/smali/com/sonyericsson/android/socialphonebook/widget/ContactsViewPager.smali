.class public Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;
.super Lcom/android/contacts/util/ViewPager;
.source "ContactsViewPager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ViewPager;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/util/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/util/ViewPager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 79
    :pswitch_0
    return v1

    .line 76
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-super {p0, p1}, Lcom/android/contacts/util/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    return v3

    .line 52
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/contacts/util/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-super {p0, p1}, Lcom/android/contacts/util/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
