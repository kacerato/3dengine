.class public Lc5/c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/c$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc5/c$d;


# direct methods
.method public constructor <init>(Lc5/c$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lc5/c$d$a;->a:Lc5/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "phase",
            "product",
            "subPlan"
        }
    .end annotation

    iget-object p1, p0, Lc5/c$d$a;->a:Lc5/c$d;

    iget-object p1, p1, Lc5/c$d;->a:Lc5/c;

    invoke-static {p1}, Lc5/c;->p1(Lc5/c;)Lw7/a;

    move-result-object p1

    new-instance v0, Lc5/a;

    invoke-direct {v0}, Lc5/a;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUB_MONTH:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc5/a;->m(Ljava/lang/String;)Lc5/a;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUB_MONTH_INFO_TEXT_CS:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc5/a;->j(Ljava/lang/String;)Lc5/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->k()F

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lmd/b;->p(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc5/a;->l(Ljava/lang/String;)Lc5/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lc5/a;->n(Ljava/lang/String;)Lc5/a;

    move-result-object p2

    invoke-virtual {p2}, Lc5/a;->g()Lc5/a;

    move-result-object p2

    new-instance v0, Lc5/c$d$a$a;

    invoke-direct {v0, p0, p3, p4}, Lc5/c$d$a$a;-><init>(Lc5/c$d$a;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V

    invoke-virtual {p2, v0}, Lc5/a;->i(Landroid/view/View$OnClickListener;)Lc5/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw7/a;->g(Ljava/lang/Object;)V

    return-void
.end method
