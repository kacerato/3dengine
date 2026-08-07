.class public LC5/b$l$a;
.super Lorg/ITsMagic/Atlas/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/b$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b$l;


# direct methods
.method public constructor <init>(LC5/b$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/b$l$a;->a:LC5/b$l;

    invoke-direct {p0}, Lorg/ITsMagic/Atlas/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LMb/n;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputVertex",
            "atlasTexture"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, LC5/b$l$a$a;

    invoke-direct {p1, p0}, LC5/b$l$a$a;-><init>(LC5/b$l$a;)V

    invoke-static {p1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->t:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object v2, v2, LC5/b$l;->d:LC5/b;

    invoke-static {v2}, LC5/b;->J(LC5/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uvpaint.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object v3, v3, LC5/b$l;->d:LC5/b;

    invoke-static {v3}, LC5/b;->J(LC5/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_uvpaint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object v3, v3, LC5/b$l;->d:LC5/b;

    invoke-static {v3}, LC5/b;->J(LC5/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object v2, v2, LC5/b$l;->d:LC5/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object v5, v5, LC5/b$l;->d:LC5/b;

    invoke-static {v5}, LC5/b;->J(LC5/b;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mesh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LC5/b;->K(LC5/b;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object v2, v2, LC5/b$l;->d:LC5/b;

    invoke-static {v2, p1}, LC5/b;->L(LC5/b;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-boolean v3, v2, LC5/b$l;->c:Z

    if-eqz v3, :cond_2

    iget-object v2, v2, LC5/b$l;->d:LC5/b;

    invoke-static {v2, v1, p2}, LC5/b;->M(LC5/b;Ljava/lang/String;LMb/p;)V

    iget-object p2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object p2, p2, LC5/b$l;->d:LC5/b;

    invoke-static {p2, v1}, LC5/b;->N(LC5/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object p2, p2, LC5/b$l;->d:LC5/b;

    invoke-static {v1}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object v1

    invoke-static {p2, v1}, LC5/b;->P(LC5/b;LMb/g;)LMb/g;

    goto :goto_0

    :cond_2
    iget-object p2, v2, LC5/b$l;->d:LC5/b;

    invoke-static {p2}, LC5/b;->Q(LC5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v2, "albedo"

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, LC5/b;->N(LC5/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object p2, p2, LC5/b$l;->d:LC5/b;

    invoke-static {p2}, LC5/b;->Q(LC5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->G(Ljava/lang/String;)LMb/p;

    move-result-object v1

    check-cast v1, LMb/g;

    invoke-static {p2, v1}, LC5/b;->P(LC5/b;LMb/g;)LMb/g;

    :goto_0
    iget-object p2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object p2, p2, LC5/b$l;->d:LC5/b;

    invoke-static {p2}, LC5/b;->O(LC5/b;)LMb/g;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object p2, p2, LC5/b$l;->d:LC5/b;

    invoke-static {p2}, LC5/b;->O(LC5/b;)LMb/g;

    move-result-object p2

    invoke-virtual {p2}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iget-object v0, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object v0, v0, LC5/b$l;->d:LC5/b;

    new-instance v2, LMb/g;

    invoke-direct {v2, p2, v1}, LMb/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    invoke-static {v0, v2}, LC5/b;->P(LC5/b;LMb/g;)LMb/g;

    :cond_3
    iget-object p2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object p2, p2, LC5/b$l;->d:LC5/b;

    invoke-static {p2}, LC5/b;->O(LC5/b;)LMb/g;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, LTb/d;->z(LMb/p;F)LTb/d;

    move-result-object v0

    invoke-static {p2, v0}, LC5/b;->b0(LC5/b;LTb/d;)LTb/d;

    iget-object p2, p0, LC5/b$l$a;->a:LC5/b$l;

    iget-object p2, p2, LC5/b$l;->d:LC5/b;

    invoke-static {p2}, LC5/b;->Q(LC5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object v0

    invoke-static {p1, v0}, Lbc/d;->d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)Lbc/d;

    move-result-object v0

    invoke-static {p2, v0}, LC5/b;->Z(LC5/b;Lbc/d;)Lbc/d;

    new-instance p2, LC5/b$l$a$b;

    invoke-direct {p2, p0, p1}, LC5/b$l$a$b;-><init>(LC5/b$l$a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-static {p2}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
