.class public LSe/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LSe/d;->c(Lpi/v;LSe/d$c;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LSe/d$b;

.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:LSe/d$c;


# direct methods
.method public constructor <init>(LSe/d$b;Ljava/lang/StringBuilder;LSe/d$c;)V
    .locals 0

    iput-object p1, p0, LSe/d$a;->a:LSe/d$b;

    iput-object p2, p0, LSe/d$a;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, LSe/d$a;->c:LSe/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Lpi/v;

    iget-object p3, p0, LSe/d$a;->a:LSe/d$b;

    iget-object v0, p0, LSe/d$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, LSe/d$b;->a(Ljava/lang/StringBuilder;)V

    iget-object p3, p0, LSe/d$a;->b:Ljava/lang/StringBuilder;

    iget-object v0, p0, LSe/d$a;->c:LSe/d$c;

    invoke-interface {v0, p2}, LSe/d$c;->a(Lpi/v;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lpi/v;->e()Lpi/v;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, LSe/d$a;->b:Ljava/lang/StringBuilder;

    const-string v0, " [\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, LSe/d$a;->a:LSe/d$b;

    invoke-virtual {p3}, LSe/d$b;->c()V

    check-cast p1, Lpi/C;

    invoke-static {p1, p2}, LSe/d;->a(Lpi/C;Lpi/v;)V

    iget-object p1, p0, LSe/d$a;->a:LSe/d$b;

    invoke-virtual {p1}, LSe/d$b;->b()V

    iget-object p1, p0, LSe/d$a;->a:LSe/d$b;

    iget-object p2, p0, LSe/d$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, LSe/d$b;->a(Ljava/lang/StringBuilder;)V

    iget-object p1, p0, LSe/d$a;->b:Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LSe/d$a;->b:Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
