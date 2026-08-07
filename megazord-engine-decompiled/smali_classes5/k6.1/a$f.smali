.class public Lk6/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$I;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6/a;->I(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lk6/a;


# direct methods
.method public constructor <init>(Lk6/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$username",
            "val$password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lk6/a$f;->c:Lk6/a;

    iput-object p2, p0, Lk6/a$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lk6/a$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lk6/a$f;->c:Lk6/a;

    invoke-static {v0}, Lk6/a;->D(Lk6/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lud/a;

    const-string v1, "Another device is logged into your account, if you continue that device will be logged out."

    const-string v2, "Outro dispositivo est\u00e1 logado na sua conta, se voc\u00ea continuar esse dispositivo ser\u00e1 deslogado."

    invoke-direct {v0, v1, v2}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lud/a;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lk6/a$f$a;

    invoke-direct {v1, p0}, Lk6/a$f$a;-><init>(Lk6/a$f;)V

    const-string v2, "Ops!"

    invoke-static {v2, v0, v1}, Lr7/c;->x1(Ljava/lang/String;Ljava/lang/String;Lr7/c$i;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lk6/a$f;->c:Lk6/a;

    iget-object v1, p0, Lk6/a$f;->a:Ljava/lang/String;

    iget-object v2, p0, Lk6/a$f;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk6/a;->C(Lk6/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lk6/a$f;->c:Lk6/a;

    invoke-static {v0}, Lk6/a;->D(Lk6/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk6/a$f;->c:Lk6/a;

    invoke-virtual {v0}, LK7/c;->h()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lxd/f;->a(Ljava/lang/String;Landroid/content/Context;Lr7/d;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, LAd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "info"

    invoke-static {p1, v0}, LAd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lk6/a$f;->c:Lk6/a;

    invoke-static {p1}, Lk6/a;->z(Lk6/a;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk6/a$f;->c:Lk6/a;

    invoke-static {p1}, Lk6/a;->A(Lk6/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk6/a$f;->c:Lk6/a;

    invoke-static {p1}, Lk6/a;->z(Lk6/a;)Landroid/widget/EditText;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INVALID_CREDENTIALS_NEW_USER:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lk6/a$f;->c:Lk6/a;

    invoke-static {p1}, Lk6/a;->A(Lk6/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
