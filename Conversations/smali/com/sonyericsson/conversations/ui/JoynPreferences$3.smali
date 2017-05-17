.class Lcom/sonyericsson/conversations/ui/JoynPreferences$3;
.super Ljava/lang/Object;
.source "JoynPreferences.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/JoynPreferences;->setDisplayNameInputFilter(Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

.field final synthetic val$aliasPref:Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/JoynPreferences;Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/JoynPreferences;
    .param p2, "val$aliasPref"    # Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$3;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$3;->val$aliasPref:Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v3, 0x0

    .line 132
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$3;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-wrap0(Lcom/sonyericsson/conversations/ui/JoynPreferences;C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$3;->val$aliasPref:Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$3;->val$aliasPref:Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 135
    const v3, 0x7f0b011b

    .line 134
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 136
    const-string/jumbo v1, ""

    return-object v1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$3;->val$aliasPref:Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return-object v3
.end method
