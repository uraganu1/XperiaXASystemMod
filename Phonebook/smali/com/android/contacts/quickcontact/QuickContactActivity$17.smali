.class Lcom/android/contacts/quickcontact/QuickContactActivity$17;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->createLauncherShortcutWithContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 2332
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$17;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "shortcutIntent"    # Landroid/content/Intent;

    .prologue
    .line 2338
    const-string/jumbo v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2339
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$17;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2335
    return-void
.end method
