# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Bounding the average treatment effect (ATE) Use atebounds (ATbounds) With (In) R Software
install.packages("ATbounds")
library("ATbounds")
atebounds = read.csv("https://raw.githubusercontent.com/timbulwidodostp/atebounds/main/atebounds/atebounds.csv",sep = ";")
# Estimation Bounding the average treatment effect (ATE) Use atebounds (ATbounds) With (In) R Software
Dependen <- atebounds$Dependen
Dummy <- atebounds$Dummy
Independen <- cbind(atebounds$Independen_1, atebounds$Independen_2)
rps <- rep(mean(Dummy),length(Dummy))
atebounds <- atebounds(Dependen, Dummy, Independen, rps, Q = 3)
summary(atebounds)
# Bounding the average treatment effect (ATE) Use atebounds (ATbounds) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished